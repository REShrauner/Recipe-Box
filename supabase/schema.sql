-- Recipe Box - Supabase schema
-- Run this once in your Supabase project's SQL Editor (Dashboard > SQL Editor > New query > paste > Run).
--
-- Note: if you already ran an earlier version of this file and have live
-- data, don't re-run this one - use the dated migration files in this
-- folder instead (e.g. multi_user.sql) so you don't lose anything.

create extension if not exists pgcrypto;

create table if not exists recipes (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  category text,                    -- e.g. Breakfast, Main Dishes, Dessert
  tags text[] not null default '{}',
  servings text,
  prep_time text,
  cook_time text,
  ingredients text not null,        -- one ingredient per line
  instructions text not null,       -- one step per line
  source text,                      -- where it came from (book, site, person)
  notes text,
  user_id uuid not null references auth.users(id) default auth.uid(), -- who added it
  is_private boolean not null default false, -- true = only the owner can see it
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists recipes_title_idx on recipes using gin (to_tsvector('english', title));
create index if not exists recipes_category_idx on recipes (category);
create index if not exists recipes_tags_idx on recipes using gin (tags);
create index if not exists recipes_user_id_idx on recipes (user_id);

-- Keep updated_at current on every edit
create or replace function set_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists trg_recipes_updated_at on recipes;
create trigger trg_recipes_updated_at
before update on recipes
for each row execute function set_updated_at();

-- Row Level Security: only a signed-in user can read or write recipes,
-- and each recipe is owned by whoever added it.
--   - everyone signed in can read public recipes
--   - a private recipe is visible only to its owner
--   - only the owner can edit or delete their own recipe
alter table recipes enable row level security;

create policy "Read public recipes, or your own private ones"
on recipes for select
to authenticated
using (is_private = false or user_id = auth.uid());

create policy "Add your own recipes"
on recipes for insert
to authenticated
with check (user_id = auth.uid());

create policy "Edit your own recipes"
on recipes for update
to authenticated
using (user_id = auth.uid())
with check (user_id = auth.uid());

create policy "Delete your own recipes"
on recipes for delete
to authenticated
using (user_id = auth.uid());
