-- Recipe Box - Supabase schema
-- Run this once in your Supabase project's SQL Editor (Dashboard > SQL Editor > New query > paste > Run).

create extension if not exists pgcrypto;

create table if not exists recipes (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  category text,                    -- e.g. Breakfast, Dinner, Dessert
  tags text[] not null default '{}',
  servings text,
  prep_time text,
  cook_time text,
  ingredients text not null,        -- one ingredient per line
  instructions text not null,       -- one step per line
  source text,                      -- where it came from (book, site, person)
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists recipes_title_idx on recipes using gin (to_tsvector('english', title));
create index if not exists recipes_category_idx on recipes (category);
create index if not exists recipes_tags_idx on recipes using gin (tags);

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

-- Row Level Security: only a signed-in user can read or write recipes.
-- This is a personal recipe box, not a public site - anyone with the URL
-- but no login sees an empty, unusable app.
alter table recipes enable row level security;

create policy "Authenticated users can read recipes"
on recipes for select
to authenticated
using (true);

create policy "Authenticated users can insert recipes"
on recipes for insert
to authenticated
with check (true);

create policy "Authenticated users can update recipes"
on recipes for update
to authenticated
using (true);

create policy "Authenticated users can delete recipes"
on recipes for delete
to authenticated
using (true);
