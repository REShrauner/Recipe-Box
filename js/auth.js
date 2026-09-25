// Sign-in gate. Accounts are created by you in the Supabase dashboard
// (Authentication > Users > Add user) - one per person who should have
// access. No public sign-up form on purpose, so a stranger can't create
// their own account. Everyone signed in can see everyone's non-private
// recipes, but can only edit or delete the ones they added themselves
// (enforced server-side by the recipes table's row-level security
// policies, not by this file).
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
