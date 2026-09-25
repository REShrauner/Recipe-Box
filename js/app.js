// Main app logic: loading/rendering recipes, search & filter, the
// add/edit form (manual entry and quick-paste transcribing), and detail
// view. auth.js calls window.RecipeApp.onSignedIn() once someone's signed
// in, which is this file's entry point.
window.RecipeApp = (function () {
  const CATEGORIES = [
    'Breakfast', 'Lunch', 'Dinner', 'Dessert',
    'Appetizer', 'Side', 'Snack', 'Beverage', 'Other'
  ];

  let allRecipes = [];
  let editingId = null; // null = adding a new recipe; otherwise the id being edited

  // ---- Element references -------------------------------------------------
  const recipeList = document.getElementById('recipe-list');
  const emptyState = document.getElementById('empty-state');
  const searchInput = document.getElementById('search-input');
  const categoryFilter = document.getElementById('category-filter');
  const addRecipeButton = document.getElementById('add-recipe-button');

  const formDialog = document.getElementById('recipe-form-dialog');
  const recipeForm = document.getElementById('recipe-form');
  const formTitleHeading = document.getElementById('recipe-form-title');
  const cancelFormButton = document.getElementById('cancel-recipe-button');
  const deleteButton = document.getElementById('delete-recipe-button');

  const tabManualButton = document.getElementById('tab-manual');
  const tabQuickPasteButton = document.getElementById('tab-quick-paste');
  const manualPanel = document.getElementById('manual-panel');
  const quickPastePanel = document.getElementById('quick-paste-panel');
  const quickPasteText = document.getElementById('quick-paste-text');
  const quickPasteParseButton = document.getElementById('quick-paste-parse-button');
  const quickPasteSummary = document.getElementById('quick-paste-summary');

  const fieldTitle = document.getElementById('field-title');
  const fieldCategory = document.getElementById('field-category');
  const fieldTags = document.getElementById('field-tags');
  const fieldServings = document.getElementById('field-servings');
  const fieldPrepTime = document.getElementById('field-prep-time');
  const fieldCookTime = document.getElementById('field-cook-time');
  const fieldIngredients = document.getElementById('field-ingredients');
  const fieldInstructions = document.getElementById('field-instructions');
  const fieldSource = document.getElementById('field-source');
  const fieldNotes = document.getElementById('field-notes');

  const detailDialog = document.getElementById('recipe-detail-dialog');
  const detailContent = document.getElementById('recipe-detail-content');
  const closeDetailButton = document.getElementById('close-detail-button');
  const editFromDetailButton = document.getElementById('edit-from-detail-button');

  // ---- Setup that only needs to happen once --------------------------------
  function populateCategoryOptions() {
    CATEGORIES.forEach((cat) => {
      const filterOpt = document.createElement('option');
      filterOpt.value = cat;
      filterOpt.textContent = cat;
      categoryFilter.appendChild(filterOpt);

      const formOpt = document.createElement('option');
      formOpt.value = cat;
      formOpt.textContent = cat;
      fieldCategory.appendChild(formOpt);
    });
  }

  function escapeHtml(str) {
    const div = document.createElement('div');
    div.textContent = str == null ? '' : String(str);
    return div.innerHTML;
  }

  function linesToArray(text) {
    return (text || '')
      .split('\n')
      .map((l) => l.trim())
      .filter((l) => l.length > 0);
  }

  // ---- Loading & rendering --------------------------------------------------
  async function loadRecipes() {
    const { data, error } = await window.supabaseClient
      .from('recipes')
      .select('*')
      .order('title', { ascending: true });
    if (error) {
      alert('Could not load recipes: ' + error.message);
      return;
    }
    allRecipes = data || [];
    renderList();
  }

  function matchesFilters(recipe, searchTerm, category) {
    if (category && recipe.category !== category) return false;
    if (!searchTerm) return true;
    const haystack = [
      recipe.title,
      recipe.ingredients,
      (recipe.tags || []).join(' ')
    ].join(' ').toLowerCase();
    return haystack.includes(searchTerm);
  }

  function renderList() {
    const searchTerm = searchInput.value.trim().toLowerCase();
    const category = categoryFilter.value;
    const filtered = allRecipes.filter((r) => matchesFilters(r, searchTerm, category));

    recipeList.innerHTML = '';
    emptyState.hidden = filtered.length > 0;

    filtered.forEach((recipe) => {
      const card = document.createElement('button');
      card.type = 'button';
      card.className = 'recipe-card';
      card.setAttribute('data-id', recipe.id);
      const tags = (recipe.tags || []).map((t) => `<span class="tag">${escapeHtml(t)}</span>`).join('');
      card.innerHTML = `
        <h3>${escapeHtml(recipe.title)}</h3>
        <div class="recipe-card-meta">
          ${recipe.category ? `<span class="category-badge">${escapeHtml(recipe.category)}</span>` : ''}
          ${recipe.servings ? `<span>${escapeHtml(recipe.servings)}</span>` : ''}
        </div>
        <div class="tag-row">${tags}</div>
      `;
      card.addEventListener('click', () => openDetail(recipe.id));
      recipeList.appendChild(card);
    });
  }

  // ---- Detail view -----------------------------------------------------------
  function openDetail(id) {
    const recipe = allRecipes.find((r) => r.id === id);
    if (!recipe) return;

    const ingredientItems = linesToArray(recipe.ingredients)
      .map((line) => `<li>${escapeHtml(line)}</li>`).join('');
    const instructionItems = linesToArray(recipe.instructions)
      .map((line) => `<li>${escapeHtml(line)}</li>`).join('');
    const meta = [recipe.servings, recipe.prep_time && `Prep: ${recipe.prep_time}`, recipe.cook_time && `Cook: ${recipe.cook_time}`]
      .filter(Boolean).map(escapeHtml).join(' &middot; ');

    detailContent.innerHTML = `
      <h2>${escapeHtml(recipe.title)}</h2>
      ${recipe.category ? `<p class="category-badge">${escapeHtml(recipe.category)}</p>` : ''}
      ${meta ? `<p class="recipe-meta">${meta}</p>` : ''}
      <h3>Ingredients</h3>
      <ul>${ingredientItems}</ul>
      <h3>Instructions</h3>
      <ol>${instructionItems}</ol>
      ${recipe.notes ? `<h3>Notes</h3><p>${escapeHtml(recipe.notes)}</p>` : ''}
      ${recipe.source ? `<p class="recipe-source">Source: ${escapeHtml(recipe.source)}</p>` : ''}
    `;
    editFromDetailButton.setAttribute('data-id', recipe.id);
    detailDialog.showModal();
  }

  closeDetailButton.addEventListener('click', () => detailDialog.close());
  editFromDetailButton.addEventListener('click', () => {
    const id = editFromDetailButton.getAttribute('data-id');
    detailDialog.close();
    openForm(id);
  });

  // ---- Add / edit form ---------------------------------------------------------
  function switchTab(tab) {
    const isManual = tab === 'manual';
    manualPanel.hidden = !isManual;
    quickPastePanel.hidden = isManual;
    tabManualButton.setAttribute('aria-selected', String(isManual));
    tabQuickPasteButton.setAttribute('aria-selected', String(!isManual));
  }
  tabManualButton.addEventListener('click', () => switchTab('manual'));
  tabQuickPasteButton.addEventListener('click', () => switchTab('quick-paste'));

  function clearForm() {
    recipeForm.reset();
    quickPasteText.value = '';
    quickPasteSummary.textContent = '';
    switchTab('manual');
  }

  function openForm(id) {
    editingId = id || null;
    clearForm();

    if (editingId) {
      const recipe = allRecipes.find((r) => r.id === editingId);
      if (!recipe) return;
      formTitleHeading.textContent = 'Edit Recipe';
      deleteButton.hidden = false;
      fieldTitle.value = recipe.title || '';
      fieldCategory.value = recipe.category || '';
      fieldTags.value = (recipe.tags || []).join(', ');
      fieldServings.value = recipe.servings || '';
      fieldPrepTime.value = recipe.prep_time || '';
      fieldCookTime.value = recipe.cook_time || '';
      fieldIngredients.value = recipe.ingredients || '';
      fieldInstructions.value = recipe.instructions || '';
      fieldSource.value = recipe.source || '';
      fieldNotes.value = recipe.notes || '';
    } else {
      formTitleHeading.textContent = 'Add Recipe';
      deleteButton.hidden = true;
    }

    formDialog.showModal();
  }

  addRecipeButton.addEventListener('click', () => openForm(null));
  cancelFormButton.addEventListener('click', () => formDialog.close());

  quickPasteParseButton.addEventListener('click', () => {
    const parsed = window.RecipeQuickAdd.parseRecipeText(quickPasteText.value);
    fieldTitle.value = parsed.title;
    fieldServings.value = parsed.servings;
    fieldPrepTime.value = parsed.prepTime;
    fieldCookTime.value = parsed.cookTime;
    fieldSource.value = parsed.source;
    fieldNotes.value = parsed.notes;
    fieldIngredients.value = parsed.ingredients.join('\n');
    fieldInstructions.value = parsed.instructions.join('\n');
    quickPasteSummary.textContent =
      `Found ${parsed.ingredients.length} ingredient line(s) and ${parsed.instructions.length} ` +
      `instruction line(s). Review them on the Manual Entry tab before saving - fix anything that ` +
      `landed in the wrong place.`;
    switchTab('manual');
  });

  recipeForm.addEventListener('submit', async (e) => {
    e.preventDefault();

    const payload = {
      title: fieldTitle.value.trim(),
      category: fieldCategory.value || null,
      tags: fieldTags.value.split(',').map((t) => t.trim()).filter((t) => t.length > 0),
      servings: fieldServings.value.trim() || null,
      prep_time: fieldPrepTime.value.trim() || null,
      cook_time: fieldCookTime.value.trim() || null,
      ingredients: fieldIngredients.value.trim(),
      instructions: fieldInstructions.value.trim(),
      source: fieldSource.value.trim() || null,
      notes: fieldNotes.value.trim() || null
    };

    if (!payload.title || !payload.ingredients || !payload.instructions) {
      alert('Title, ingredients, and instructions are all required.');
      return;
    }

    const query = editingId
      ? window.supabaseClient.from('recipes').update(payload).eq('id', editingId)
      : window.supabaseClient.from('recipes').insert(payload);

    const { error } = await query;
    if (error) {
      alert('Could not save recipe: ' + error.message);
      return;
    }

    formDialog.close();
    await loadRecipes();
  });

  deleteButton.addEventListener('click', async () => {
    if (!editingId) return;
    if (!confirm('Delete this recipe? This can\'t be undone.')) return;
    const { error } = await window.supabaseClient.from('recipes').delete().eq('id', editingId);
    if (error) {
      alert('Could not delete recipe: ' + error.message);
      return;
    }
    formDialog.close();
    await loadRecipes();
  });

  // ---- Search & filter ---------------------------------------------------------
  searchInput.addEventListener('input', renderList);
  categoryFilter.addEventListener('change', renderList);

  // ---- Entry point, called by auth.js once signed in -----------------------------
  let initialized = false;
  async function onSignedIn() {
    if (!initialized) {
      populateCategoryOptions();
      initialized = true;
    }
    await loadRecipes();
  }

  return { onSignedIn };
})();
