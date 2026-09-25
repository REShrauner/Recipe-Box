-- Recipe Box - rename the side-dish category to "Side Dishes"
-- Run this once in the Supabase SQL Editor. Only updates the category
-- label on existing recipes - nothing else changes.
--
-- Covers both 'Side' (the original name) and 'Sides' (an intermediate
-- name), in case either is still present on your recipes.

update recipes set category = 'Side Dishes' where category in ('Side', 'Sides');
