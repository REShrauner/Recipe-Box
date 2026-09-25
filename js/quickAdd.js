// "Quick paste" transcribing helper: takes a blob of recipe text (copied
// from a Word doc, a website, a PDF, typed from a photo, wherever) and does
// its best to split it into title / servings / times / ingredients /
// instructions / source / notes. It's a best-effort guess, not magic -
// the parsed result always lands back in the normal, fully-editable Add
// Recipe form so anything it gets wrong is a quick fix, not a redo.
window.RecipeQuickAdd = (function () {
  const INGREDIENT_HEADERS = /^ingredients?:?$/i;
  const INSTRUCTION_HEADERS = /^(instructions?|directions?|method|steps|preparation):?$/i;
  const SERVINGS_LINE = /^\s*(servings?|yield|makes)\s*:\s*(.+)$/i;
  const PREP_TIME_LINE = /^\s*prep(?:aration)?\s*time\s*:\s*(.+)$/i;
  const COOK_TIME_LINE = /^\s*cook(?:ing)?\s*time\s*:\s*(.+)$/i;
  const SOURCE_LINE = /^\s*(source|from|adapted from)\s*:\s*(.+)$/i;
  const NOTES_LINE = /^\s*notes?\s*:\s*(.+)$/i;
  const BULLET_OR_NUMBER = /^\s*(?:[-*•]|\d+[.)])\s*/;

  function stripBullet(line) {
    return line.replace(BULLET_OR_NUMBER, '').trim();
  }

  function parseRecipeText(raw) {
    const lines = (raw || '').replace(/\r\n/g, '\n').split('\n').map((l) => l.trim());

    const result = {
      title: '',
      servings: '',
      prepTime: '',
      cookTime: '',
      source: '',
      notes: '',
      ingredients: [],
      instructions: []
    };

    // Find the ingredients/instructions header lines first, since
    // everything else is figured out relative to them.
    let ingredientsStart = -1;
    let instructionsStart = -1;
    lines.forEach((line, i) => {
      if (ingredientsStart === -1 && INGREDIENT_HEADERS.test(line)) ingredientsStart = i;
      if (instructionsStart === -1 && INSTRUCTION_HEADERS.test(line)) instructionsStart = i;
    });

    // Title: first non-empty line before the ingredients header (or before
    // instructions, if there's no ingredients header), as long as it isn't
    // itself a metadata line.
    const titleBoundary = ingredientsStart >= 0 ? ingredientsStart : instructionsStart;
    for (let i = 0; i < (titleBoundary >= 0 ? titleBoundary : lines.length); i++) {
      const line = lines[i];
      if (!line) continue;
      if (SERVINGS_LINE.test(line) || PREP_TIME_LINE.test(line) || COOK_TIME_LINE.test(line) ||
          SOURCE_LINE.test(line) || NOTES_LINE.test(line)) continue;
      result.title = line;
      break;
    }

    // Ingredients block: header to the next header (or to instructions).
    if (ingredientsStart >= 0) {
      const end = instructionsStart > ingredientsStart ? instructionsStart : lines.length;
      for (let i = ingredientsStart + 1; i < end; i++) {
        const line = lines[i];
        if (!line) continue;
        result.ingredients.push(stripBullet(line));
      }
    }

    // Instructions block: header to end, minus any trailing metadata lines
    // (Source:, Notes:) which are pulled out separately below.
    if (instructionsStart >= 0) {
      for (let i = instructionsStart + 1; i < lines.length; i++) {
        const line = lines[i];
        if (!line) continue;
        const sourceMatch = line.match(SOURCE_LINE);
        const notesMatch = line.match(NOTES_LINE);
        if (sourceMatch) { result.source = sourceMatch[2].trim(); continue; }
        if (notesMatch) { result.notes = notesMatch[1].trim(); continue; }
        result.instructions.push(stripBullet(line));
      }
    }

    // Metadata lines (servings/prep/cook/source/notes) can appear anywhere
    // in the text, not just in the trailing section - scan everything.
    lines.forEach((line) => {
      const servings = line.match(SERVINGS_LINE);
      const prep = line.match(PREP_TIME_LINE);
      const cook = line.match(COOK_TIME_LINE);
      const source = line.match(SOURCE_LINE);
      const notes = line.match(NOTES_LINE);
      if (servings && !result.servings) result.servings = servings[2].trim();
      if (prep && !result.prepTime) result.prepTime = prep[1].trim();
      if (cook && !result.cookTime) result.cookTime = cook[1].trim();
      if (source && !result.source) result.source = source[2].trim();
      if (notes && !result.notes) result.notes = notes[1].trim();
    });

    // Fallback: no recognizable "Ingredients"/"Instructions" headers at
    // all - just split the text in half by blank-line paragraphs so there's
    // still something in each box to clean up, instead of an empty form.
    if (ingredientsStart === -1 && instructionsStart === -1) {
      const nonEmpty = lines.filter((l) => l);
      const mid = Math.ceil(nonEmpty.length / 2);
      result.ingredients = nonEmpty.slice(0, mid).map(stripBullet);
      result.instructions = nonEmpty.slice(mid).map(stripBullet);
      if (!result.title && nonEmpty.length) result.title = nonEmpty[0];
    }

    return result;
  }

  return { parseRecipeText };
})();
