-- Recipe Box - multi-user support
-- Run this once in the Supabase SQL Editor. Adds an owner (user_id) to
-- each recipe and a "private" flag, then replaces the security rules so:
--   - everyone signed in can see everyone's public recipes
--   - a private recipe is visible only to whoever added it
--   - you can only edit or delete recipes you added yourself
--
-- Safe to run on your existing 100 recipes: every one of them is assigned
-- to your account (the only one that exists so far) and none of them
-- becomes private.

begin;

alter table recipes
  add column if not exists user_id uuid references auth.users(id) default auth.uid(),
  add column if not exists is_private boolean not null default false;

-- Assign every existing recipe (added before this column existed) to the
-- one account that exists so far - you.
update recipes set user_id = (select id from auth.users order by created_at limit 1)
where user_id is null;

alter table recipes alter column user_id set not null;

create index if not exists recipes_user_id_idx on recipes (user_id);

-- Replace the old "anyone signed in can do anything" policies with
-- ownership-aware ones.
drop policy if exists "Authenticated users can read recipes" on recipes;
drop policy if exists "Authenticated users can insert recipes" on recipes;
drop policy if exists "Authenticated users can update recipes" on recipes;
drop policy if exists "Authenticated users can delete recipes" on recipes;

-- Everyone signed in can read public recipes; a private recipe is visible
-- only to whoever added it.
create policy "Read public recipes, or your own private ones"
on recipes for select
to authenticated
using (is_private = false or user_id = auth.uid());

-- New recipes are always owned by whoever is signed in and adding them.
create policy "Add your own recipes"
on recipes for insert
to authenticated
with check (user_id = auth.uid());

-- Only the owner can edit their own recipe, and can't hand it off to
-- someone else while doing so.
create policy "Edit your own recipes"
on recipes for update
to authenticated
using (user_id = auth.uid())
with check (user_id = auth.uid());

-- Only the owner can delete their own recipe.
create policy "Delete your own recipes"
on recipes for delete
to authenticated
using (user_id = auth.uid());

commit;
