// Creates one shared Supabase client for the whole app, from the values in
// js/config.js (see js/config.example.js for the template).
(function () {
  const cfg = window.RECIPE_APP_CONFIG;
  if (!cfg || !cfg.supabaseUrl || cfg.supabaseUrl.includes('YOUR-PROJECT-REF')) {
    document.addEventListener('DOMContentLoaded', () => {
      document.body.innerHTML =
        '<div style="max-width:640px;margin:60px auto;padding:24px;font-family:system-ui,sans-serif;line-height:1.5;">' +
        '<h1>Recipe Box isn\'t set up yet</h1>' +
        '<p>Copy <code>js/config.example.js</code> to <code>js/config.js</code> and fill in your ' +
        'Supabase project URL and anon key (Project Settings &gt; API in your Supabase dashboard). ' +
        'See README.md for the full setup steps.</p>' +
        '</div>';
    });
    throw new Error('Recipe Box: js/config.js is missing or not filled in.');
  }

  window.supabaseClient = window.supabase.createClient(cfg.supabaseUrl, cfg.supabaseAnonKey);
})();
