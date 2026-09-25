-- Recipe Box - rename "Sides" category to "Side Dishes"
-- Run this once in the Supabase SQL Editor. Only updates the category
-- label on existing recipes - nothing else changes.

update recipes set category = 'Side Dishes' where category = 'Sides';
