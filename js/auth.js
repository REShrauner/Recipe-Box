// Sign-in gate. This is a personal recipe box - one account (you), created
// once in the Supabase dashboard (Authentication > Users > Add user). No
// public sign-up form on purpose, so a stranger can't create their own
// account and start adding/deleting recipes.
(function () {
  const signInView = document.getElementById('sign-in-view');
  const appView = document.getElementById('app-view');
  const signInForm = document.getElementById('sign-in-form');
  const signInError = document.getElementById('sign-in-error');
  const signOutButton = document.getElementById('sign-out-button');
  const userEmailLabel = document.getElementById('user-email-label');

  async function refreshAuthUI() {
    const { data: { session } } = await window.supabaseClient.auth.getSession();
    if (session) {
      signInView.hidden = true;
      appView.hidden = false;
      userEmailLabel.textContent = session.user.email;
      window.RecipeApp.onSignedIn();
    } else {
      signInView.hidden = false;
      appView.hidden = true;
    }
  }

  signInForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    signInError.hidden = true;
    const email = document.getElementById('sign-in-email').value.trim();
    const password = document.getElementById('sign-in-password').value;
    const { error } = await window.supabaseClient.auth.signInWithPassword({ email, password });
    if (error) {
      signInError.textContent = error.message;
      signInError.hidden = false;
      return;
    }
    await refreshAuthUI();
  });

  signOutButton.addEventListener('click', async () => {
    await window.supabaseClient.auth.signOut();
    await refreshAuthUI();
  });

  window.supabaseClient.auth.onAuthStateChange(() => refreshAuthUI());
  refreshAuthUI();
})();
