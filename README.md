# Recipe Box

A personal recipe organizer: hand-coded HTML/CSS/JS, Supabase backend, meant to be hosted on GitHub Pages - same setup as the Guild Auction app.

## What it does

- Add recipes by typing them into a form, or by pasting a whole recipe's text (copied from a Word doc, a website, a PDF, or typed out from a photo/recipe card) into the **Quick Paste** tab, which tries to split it into title/ingredients/instructions automatically. Either way, everything lands in the normal editable form before you save, so nothing gets added without a chance to fix it first.
- Search by title or ingredient, and filter by category.
- Only you can view or edit recipes - there's a sign-in screen, and no public sign-up (see Step 3 below for how your one account gets created).

## One-time setup

### 1. Create a Supabase project

1. Go to [supabase.com](https://supabase.com), sign in (or create a free account), and click **New project**.
2. Give it a name (e.g. "recipe-box") and a database password (save this somewhere - you likely won't need it day to day, but it's your project's master password).
3. Wait a minute or two for it to finish setting up.

### 2. Create the recipes table

1. In your new project, open **SQL Editor** in the left sidebar, then **New query**.
2. Open `supabase/schema.sql` from this folder, copy all of it, paste it into the query editor, and click **Run**.
3. You should see "Success. No rows returned" - that means the `recipes` table and its security rules were created.

### 3. Create your sign-in account

1. In the left sidebar, go to **Authentication > Users**, then **Add user**.
2. Enter your email and a password you'll remember. Check **Auto Confirm User** if it's offered, so you don't have to click a confirmation email.
3. That's your one and only login for this app - there's no sign-up page, on purpose.

### 4. Get your project's API keys

1. Go to **Project Settings > API**.
2. You'll need the **Project URL** and the **anon public** key (not the "service_role" one - never put that in client-side code).

### 5. Point the app at your project

1. In the `js` folder, copy `config.example.js` to a new file named `config.js`.
2. Open `config.js` and paste in your Project URL and anon key from Step 4.
3. `config.js` is listed in `.gitignore` so it never gets pushed to GitHub - if you ever set this up on a second computer, you'll redo this one small step there too.

### 6. Try it locally (optional but recommended)

Double-click `index.html` to open it in your browser and sign in with the account from Step 3, just to confirm everything's wired up before you publish it.

### 7. Publish with GitHub Pages

1. Create a new repository on GitHub (e.g. "Recipe-Box").
2. Using GitHub Desktop, add this folder as that repository and publish/push it.
3. On GitHub.com, go to the repo's **Settings > Pages**, and set it to deploy from your main branch.
4. After a minute, your app will be live at `https://<your-username>.github.io/<repo-name>/`.

## Adding recipes from your existing Word documents

For each Word doc: open it, select all the text, copy it, then in the app click **+ Add Recipe > Quick Paste**, paste it in, and click **Parse into fields**. It works best when the ingredients and instructions each start on their own line with a heading like "Ingredients" or "Instructions"/"Directions" - if a document doesn't have those headings, or the parsing guesses wrong, just fix it up on the Manual Entry tab before saving.

If you'd rather not do that one at a time, you can also send me (Claude) the Word documents directly and I can help transcribe a batch of them into the format Quick Paste expects, or add them for you.

## Project structure

```
index.html              the whole app's markup
css/styles.css           styling (supports light/dark automatically)
js/config.example.js     template for your own (gitignored) config.js
js/supabaseClient.js     sets up the shared Supabase connection
js/auth.js               sign-in / sign-out
js/quickAdd.js           the paste-and-parse text splitter
js/app.js                recipe list, search/filter, add/edit/delete
supabase/schema.sql      the database table + security rules
```
