-- Recipe Box - category scheme update
-- Run this once in the Supabase SQL Editor to bring your existing 100
-- recipes in line with the updated category list:
--   Lunch + Dinner merged into "Main Dishes"
--   Snack removed
--   Side renamed to "Sides"
--   Cookies and Candies added (split out of the old catch-all "Dessert")
--
-- Nothing here is destructive to your recipe content - only the category
-- field changes, and you can always re-pick a category on any recipe via
-- Edit if one of these calls looks wrong.

begin;

-- "Dinner" -> "Main Dishes" (33 recipes)
update recipes set category = 'Main Dishes' where category = 'Dinner';

-- Split the old "Cookies & Candies" recipes (currently all tagged
-- "Dessert") into the two new categories.
update recipes set category = 'Cookies' where title in (
  'Banana Oatmeal Cookies',
  'Blonde Brownies',
  'Chocolate Kiss Cookies',
  'Pizelles',
  'Pumpkin Cookies',
  'Snickerdoodles',
  'Sugar Cookies'
);

update recipes set category = 'Candies' where title in (
  'Divinity Candy',
  'English Toffee',
  'Fantasy Fudge',
  'Haystacks',
  'Peanut Brittle',
  'Peanut Butter Fudge',
  'White Chocolate Fudge'
);

commit;
