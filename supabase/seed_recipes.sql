-- Recipe Box - seed data
-- Transcribed from the Word recipe cards in your Favorite Recipes folder
-- (Appetizers & Side Dishes, Breakfast & Breads, Cookies & Candies, Desserts, Main Dishes).
--
-- Run this ONCE, after you've done the one-time Supabase setup in README.md
-- (created the project, run supabase/schema.sql, and created your sign-in account):
-- Supabase dashboard > SQL Editor > New query > paste this whole file > Run.
-- 100 recipes.

begin;

-- ==== Appetizer ====
insert into recipes (title, category, ingredients, instructions, source) values (
  'Broccoli Casserole',
  'Appetizer',
  '2 boxes Chopped Broccoli
¼ cup Butter (melted)
½ lb. Velveeta (cubed)
½ 8 oz. box Ritz Crackers (crushed)
¼ cup Butter (softened)',
  'Mix broccoli with ¼ cup melted butter.  Layer broccoli and cubed cheese.
Mix crackers and softened butter.  Sprinkle over broccoli.  Bake at 350o for 20 minutes.',
  'Peggy Cannon'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Calico Beans',
  'Appetizer',
  '5 slices Bacon (diced)
1/3 cup Onion (chopped)
1/3 cup Green Pepper (chopped)
1 no. 3 can Pork & Beans
1 no. 3 can Butter Beans
1 no. 3 can Kidney Beans
1 no. 3 can Mexican Beans
¼ cup {or more} Velveeta (Cubed)
1/3 cup Ketchup
1/3 cup Brown Sugar
1 Tbls. Worcestershire
1/3 Cup Parmesan',
  'Sauté
Drain
Mix all together.  Bake at 350o for 45 minutes.',
  'Jenny Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Classic White Dressing',
  'Appetizer',
  '8 Cups French Bread (cubed and staled)
1 ½ Cup Whole Milk
1 stick Butter
2 Cups Onion (diced)
2 Cups Celery (diced)
2 ½ Cups Chicken Broth
¼ Cup Fresh Sage (chopped)
¼ Cup Fresh Parsley (chopped)
3 Eggs (beaten until frothy)
Salt and Pepper',
  'Soak while preparing other ingredients.
Sweat until softened.
Stir broth and onion mixture into soaked bread.  Gently stir in eggs, salt and pepper.  Pour into prepared dish.  Bake at 375o for 1 hour or center is set.',
  'Cuisine at Home'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Frozen Strawberry Salad',
  'Appetizer',
  '1 package Cream Cheese (softened)
¾ cup Sugar
1 10 oz. package Strawberries (thawed)
1 can Crushed Pineapple
½ cup Pecans (chopped)
1 carton Cool Whip',
  'Cream the cream cheese and sugar.  Add the strawberries, pineapple, and pecans.  Mix thoroughly.  Fold in the cool whip.  Place in serving dish and freeze.
Let thaw for 30-45 minutes before serving.',
  'Marlene Woolfolk'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Make Ahead Mashed Potatoes',
  'Appetizer',
  '5 lbs. Potatoes(cut up and boiled)
2-3 oz. Cream Cheese (softened)
1 Cup Sour Cream
½ tsp. Onion Salt
½ tsp. Garlic Powder
1 tsp. Salt
¼ tsp. Pepper
2 Tbls. Butter',
  'Put all ingredients in a bowl and mash.
Dot with butter before heating.
Refrigerate for up to 2 weeks.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Marinated Shrimp',
  'Appetizer',
  '1 ¼ Cup Salad Oil
¾ Cup White Vinegar
1 ½ tsp. Salt
2 ½ tsp. Celery Seed
2 ½ Tbls. Capers (with juice)
1 clove Garlic (crushed)
2 lbs. Shrimp (cooked and peeled)
3 medium Red Onions (thinly sliced)
5 Bay Leaves
1 ½ Tbsp. Whole Cloves',
  'Mix first six ingredients.  Layer shrimp and onions, crushing bay leaves and cloves over each layer.  Pour marinade over.  Marinate 24 hours, turning after 12.',
  'Pamela Young'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Mushroom Pate',
  'Appetizer',
  '1 Cup Butter
2 lbs. Mushrooms (finely chopped)
1 tsp. Salt
½ tsp. Pepper
½ tsp. Thyme Leaves
3 Egg Yolks
1 Tbls. Heavy Cream',
  'Melt butter over medium heat; add mushrooms.  Cook, stirring occasionally, until mushrooms are well browned and liquid cooks down (about 35 minutes).  Stir in salt, pepper, and thyme.  Remove from heat.
Combine yolks with cream in a small bowl.  Add ¼ cup mushroom mixture, stirring well.  Combine with rest of mushroom mixture in the skillet.  Cook over low heat, stirring constantly, for 2 to 3 minutes.  Spoon into a 3 cup container.  Chill until firm.  Bring to room temperature before serving.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Roasted Garlic-and-Cheese Risotto',
  'Appetizer',
  '1 Garlic Bulb
7 Shitake Mushrooms
1 tsp. Butter
1 tsp. Olive Oil
1 Onion (chopped)
1 ½ Cups Arborio Rice
½ Cup Corn Kernels
½ Cup Dry White Wine
7 to 8 Cups Chicken Broth
1/12 tsp Thyme
½ tsp. Salt
½ tsp.  Pepper
¼ tsp.  Sage
½ package Cream Cheese',
  'Trim pointed end of garlic; wrap in foil.  Bake at 425o for 30 minutes.  Cool.  Remove pulp and chop.
Thinly slice mushrooms.  Melt butter and oil.  Add onion and mushrooms; sauté 2 to 3 minutes.  Add rice; sauté 1 minute.  Sire in corn and wine; reduce heat and simmer, stirring constantly until wine is reduced by half.  Add ½ cup broth at a time and cook, stirring constantly, until absorbed.  Repeat until rice is tender.  Stir in thyme and next three ingredients.  Add cream cheese and garlic.  Serve immediately.',
  'Southern Living'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Scalloped Corn with Oysters',
  'Appetizer',
  '1 can Whole Corn (drained)
1 can Creamed Corn
1 Egg (beaten)
¼ cup Milk
small can Oysters (medium dice)
Saltine Crackers (crushed)
¼ Onion (chopped)
Cheese (diced)
Salt & Pepper (to taste)',
  'Mix together.
Bake at 350o about 25-30 minutes or until browned around the edges.  Let rest for 10 minutes after baking.
Use between ½ and 2/3 cup saltines.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Spinach Balls',
  'Appetizer',
  '2 10 oz. packages Frozen Spinach
2 Cups Herbed Stuffing Mix
½ Cup Parmesan Cheese (shredded)
2 tsp. Garlic Salt
1 tsp. Pepper
1 ½ tsp. Thyme
¾ Cup Butter (melted)
5 Eggs (beaten)',
  'Cook spinach according to the package.  Drain spinach thoroughly, pat dry.
Add dry ingredients; toss with a fork to mix.  Blend in butter, then eggs.
Form into balls about the size of a walnut.  Bake on a greased shallow pan 18-20 minutes at 350o.',
  'Linda Sullivan'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Squash Casserole',
  'Appetizer',
  '5 lbs. medium Yellow Squash
2 Eggs (beaten)
1 cup Bread Crumbs
1 stick Butter
¼ cup Sugar
Salt (to taste)
2 Tbls. Onion (chopped)
dash Pepper',
  'Cut squash into 3 or 4 pieces.  Boil until tender.  Drain and mash.
Combine with the remainder of the ingredients.  Put into greased 3 quart casserole pan.  Cover with extra bread crumbs.
Bake at 350o 20-25 minutes until light brown.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Sweet Potato Souffle',
  'Appetizer',
  '3 cups Sweet Potato (cooked and
mashed)
1 cup Sugar
3 Eggs
1 tsp. Vanilla
½ cup Milk
¼ cup Butter (softened)
Topping
1 cup Brown Sugar
½ cup Flour
¼ cup Butter (softened)
1 cup Pecans (chopped)',
  'Put all in mixer and blend until combined.  Pour into a greased 9x13.
Mix together with a fork.  Spread on top of casserole.
Bake at 350o for 35-40 minutes.
1 ½ recipes fills a 9x13 pan.',
  'Jenny Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Swiss & Blue Cheese Crostini',
  'Appetizer',
  '1 French Baguette
4 cloves Garlic (pressed)
¼ Cup Olive Oil
12 Dried Tomatoes in Oil (halved)
1 Cup Swiss Cheese (shredded)
4 oz. Blue Cheese (crumbled)
¼ Cup Parsley (chopped)',
  'Slice bread into 24 slices and plac eon a aluminum foil lined baking sheet.
Bake at 400o for 5 minutes or lightly browned.
Combine garlic and oil; brush on bread slices. Top each slice with a tomato half and cheeses; set aside.
Bake at 400o for 5 minutes or until cheese melts.  Serve immediately.',
  'Susan Linguist'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'White Dressing',
  'Appetizer',
  '8 Cups White Bread, cubed, staled
1 ½ Cups Whole Milk
½ Cup Butter
2 Cups Onion, diced
2 Cups Celery,  diced
2 ½ Cups Chicken Broth
¼ Cup Fresh Sage
¼ Cup Fresh Parsley
3 Eggs, beaten until frothy',
  'Soak bread in milk.
Sweat in butter until soft.
Stir broth, onion mixture and herbs into soaked bread.  Gently stir in eggs, salt and pepper, then pour into prepared dish.  Bake at 375o for one hour.',
  'Cuisine at Home'
);

-- ==== Breakfast ====
insert into recipes (title, category, ingredients, instructions, source) values (
  'Apple Muffins',
  'Breakfast',
  '2 Cups Flour
½ Cup Sugar
4 tsp. Baking Powder
½ tsp. Salt
½ tsp. Cinnamon
1 Egg (beaten)
1 Cup Milk
4 Tbls. Butter (melted)
1 Cup Apple (chopped)',
  'Stir to mix dry ingredients.
Blend into the dry ingredients.  Do not overmix – mixture will be lumpy.
Fill baking cups 2/3 full.  Top with mixture of 2 Tbls. Sugar and ½ tsp. Cinnamon.  Bake at 425o for 15-18 minutes or until browned.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Baked Oatmeal',
  'Breakfast',
  '3 Cups Old Fashioned Oatmeal
¾ Cup Brown Sugar
2 tsp. Baking Powder
1 tsp. Salt
Cinnamon
Nuts or Raisins
¼ Cup Butter (melted)
2 Eggs (beaten)
1 ½ Cup Milk',
  'Mix together in a large bowl.
Mix together, then pour over dry ingredients and blend.  Pour into a well-greased 9x12 pan.  Bake at 350o for 20 minutes.
Can be served with milk, cream, syrup or fresh fruit.',
  'Scott Station Inn'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Banana Nut Bread',
  'Breakfast',
  '½ Cup Shortening
½ Cup Sugar
2 Eggs
1 Cup Banana (mashed)
1 ¾ Cup Flour (sifted)
1 ½ tsp. Baking Powder
½ tsp. Salt',
  'Cream together the shortening and sugar.  Add eggs and banana.  Sift together the dry ingredients and stir into creamed mixture.
Bake at 350o for about 40 minutes.',
  'Great Grandma Dickens'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Breakfast Enchiladas',
  'Breakfast',
  '1 lb. Hot Sausage
2 Tbls. Butter
4 Green Onions (thinly sliced)
2 Tbls. Cilantro (chopped)
14 Eggs (beaten)
¾ tsp. Salt
½ tsp. Pepper
8 Flour Tortillas (8 inch)
1 Cup Pepper Jack (shredded)',
  'Brown sausage; drain well.  Melt butter; Add green onions and cilantro and sauté for 1 minute.  Add eggs, salt and pepper, and cook without stirring until eggs begin to set on the bottom.  Continue to cook until eggs are done but still moist; do not stir constantly.  Remove from heat and gently fold in 1 ½ cups cheese sauce and sausage.
Spoon 1/3 cup egg mixture on each tortilla and roll.  Place in a 13x9 dish.  Pour remaining cheese sauce over tortillas and sprinkle with cheese.  Bake at 350o for 30 minutes.',
  'Southern Living'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Butterhorn Rolls',
  'Breakfast',
  '1 Cup Milk
1 ½ Packages Dry Yeast
½ Cup Butter
3 Eggs (beaten)
1 tsp. Salt
4 ½ Cups Flour',
  'Scald milk; add butter, sugar and salt.  Cool to lukewarm, add yeast.  Stir.  Add eggs, then flour; mix to a smooth dough.  Knead lightly on a floured surface.  Place dough in a greased bowl, cover and let rise in a warm place until at least double in bulk.  Divide dough into thirds.  Roll each third on a lightly floured surface (round shape for butterhorns, rectangular for cinnamon rolls).  Cut into triangles or spread with cinnamon and sugar, roll and slice.  Arrange in greased baking pan.  Brush with butter.  Cover and let rise.  Bake at 400o for 15 minutes.',
  'Dot Hensel'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Buttermilk Biscuits',
  'Breakfast',
  '½ Cup Butter (cold)
2 ¼ Cup Self-rising Flour
1 ¼ Cup Buttermilk
1 cup self-rising flour =
1 cup all-purpose flour
+ 1 ½ tsp baking powder
+ 1/8 tsp salt',
  'Cut butter into flour until mixture resembles small peas.  Cover and chill 10 minutes.  Add buttermilk; stir until moistened.
Turn out onto floured surface; knead 3-4 times, adding flour as needed.  Pat into a ¾ inch thick rectangle; sprinkle with four.  Fold dough into thirds.  Repeat 2 more times.
Pat to ½ inch thick.  Cut and place on pan (dough should touch).
Bake at 450o for 13 to 15 minutes.',
  'Southern Living'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Butterscotch Crescent Rolls',
  'Breakfast',
  '1 pkg. Butterscotch Pudding (not instant)
2 Cups Milk
1 stick Butter
¼ Cup Water (warm)
1 pkg. Yeast
2 tsp. Salt
2 Eggs (beaten)
4 to 4 ½ Cups Flour
Filling
½ Cup Butter (melted)
1 Cup Coconut
1 Cup Brown Sugar
4 Tbls. Flour
½ Cup Pecans (chopped)
Icing
2 Tbls. Butter
2 Tbls. Milk
¼ Cup Brown Sugar
1 Cup Powdered Sugar',
  'Dissolve the yeast in warm water.  Cook butterscotch mix with milk until thick.  Remove from heat and add butter.  When lukewarm add to yeast mixture.  Add salt, eggs and flour.  Mix well and knead lightly.  Let raise until double.  Knead lightly before separating dough into 4 parts.  Roll dough in a circle.  Sprinkle with filling and cut into small pie-shaped pieces.  Roll up as for crescent rolls.  Let raise on a greased pan, then bake at 350o for 20 minutes.
Icing
Bring butter, milk and brown sugar to a boil.  Add powdered sugar.',
  'Charlotte Filson'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Cheese Sauce',
  'Breakfast',
  '1/3 Cup Butter
1/3 Cup Flour
3 Cups Milk
2 Cups Cheddar Cheese (shredded)
1 can Green Chiles (chopped)
¾ tsp. Salt',
  'Melt butter; whisk in flour until smooth.  Cook, whisking constantly for 1 minute.  Gradually whisk in milk; cook, whisking constantly until thickened.  Remove from heat, and stir in remaining ingredients until cheese is melted and smooth.',
  'Southern Living'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Cinnamon Ripple Tea Cake',
  'Breakfast',
  '2 ¼ Cup Flour
¾ Cup Sugar
¾ Cup Butter
½ tsp. Baking Powder
½ tsp. Baking Soda
1/8 tsp. Salt
1 Egg (beaten)
¾ Cup Buttermilk
½ Cup Brown Sugar
1 Tbls. Cinnamon',
  'Stir together flour and sugar.  Cut in butter until the mixture resembles coarse crumbs.  Set aside ½ cup for topping.
Stir baking powder, baking soda and salt into the remaining flour mixture.  Make a well in the center.
In a small bowl, combine egg and buttermilk.  Add to the dry ingredients.  Stir just until moistened.
Spread two-thirds of the batter into an 8x8 pan.  Sprinkle with the brown sugar and cinnamon.  Spoon the remaining batter in small mounds. Sprinkle with the reserved topping.
Bake at 350o for 35 minutes.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Company Breakfast',
  'Breakfast',
  '8 Eggs (hard boiled)
Cheese Crackers (broken into crumbs)
1 Can Cream of Mushroom Soup
½ Soup Can Milk',
  'Chop the eggs into a greased casserole.  Poke cheese cracker crumbs into the eggs.  Dilute the mushroom soup with the milk; Cover the eggs with the soup mixture.  Sprinkle grated cheese on the top.  Bake at 350o for 30 minutes.',
  'Martha Morlan'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Focaccia',
  'Breakfast',
  'Biga:
1 ½ Cups Water (room temperature)
2 ¼ tsp. Instant Dry Yeast
1 Cup Bread Flour
Dough:
Biga
2 Cups Bread Flour
2 tsp. Fine Sea Salt
½ tsp. Sugar',
  'Whisk together Biga.  Cover and chill overnight.  Bring to room temperature.  Combine dough in the bowl of a stand mixer fitted with a dough hook.  Mix on low speed until incorporated.  Increase to medium-low and knead 5 minutes.  If the dough is not wet and sticky, add water 2 tsp. at a time.  Allow to rise until doubled.  Drizzle 3 Tbls. Olive Oil in 9x13 pan.  Transfer dough into pan.  Let rise until 1” thick.  Dimple top by poking 6-7 times.  Drizzle with 5 Tbls. Olive Oil; sprinkle with ½ tsp coarse salt.  Bake at 400o until sides pull away from pan, 25-30 minutes.',
  'Cuisine at Home'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Green Chile Tortilla Casserole',
  'Breakfast',
  '6, 7 ½” Flour Tortillas
4 (4 oz.) cans Green Chiles (chopped)
8 oz. Ham (thinly sliced) or
1 lb. Sausage (cooked and drained)
4 cups Monterey Jack Cheese (grated)
5 Eggs (beaten)
2 cups Milk
1 tsp. Salt',
  'Spray a 9x13 pan with cooking oil.  Cover bottom of pan with tortillas, cutting them to fit.  Sprinkle with half the chopped chilies, half the ham and half the cheese.  Repeat layers.
Beat together the eggs, milk and salt.  Pour over the layered ingredients.  Let stand in the refrigerator ½ hour or overnight.  Bake in preheated 350o oven for 45 minutes or until slightly puffed and bubbly.',
  'Judy Byrd'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Light ‘n Crisp Waffles',
  'Breakfast',
  '2 Egg Yolks
2 Cups Milk
2 Cups Flour
1 Tbls. Baking Powder
½ tsp. Salt
1/3 cup Oil
2 Egg Whites (stiffly beaten)',
  'Preheat waffle iron.  Put all ingredients except egg whites in a large mixe bowl.  Beat on low until moistened.  Increase to medium; mix until smooth.  By hand, gently fold in beaten egg whites.
Bake in the waffle iron.',
  'Oster'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pizza Dough',
  'Breakfast',
  '1 Package Dry Yeast
1 Cup Warm Water
½ tsp. Salt
2 tsp. Olive Oil
2 ½ - 3 ½ Cups Flour',
  'Dissolve yeast in warm water.  Add salt, olive oil, and 2 ½ cups flour.  Mix with dough hook on speed 2 for about 1 minute.
Continue on speed 2, add remaining flour ½ cup at a time and mix until dough cleans the side of the bowl.  Kneed on speed 2 for about 2 minutes longer.
Place dough in greased bowl, turning to grease top.  Cover and let rise in a warm place about 1 hour.',
  'Kitchen Aid'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pumpkin Bread',
  'Breakfast',
  '3 1/3 Cups flour
1 ½ tsp salt
2 tsp soda
1 tsp each
cinnamon,
nutmeg,
cloves and
allspice
3 Cups sugar
1 Cup shortening (melted)
4 eggs (lightly beaten)
2/3 cup water
2 cups pumpkin (1 can)',
  'Mix all dry ingredients.  Make a well in the flour; beat in eggs, water, pumpkin and shortening.  Pour into 2 greased and floured loaf pans.  Bake at 350o for 1 hour.  Butter the crust while warm.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Stuffed French Toast',
  'Breakfast',
  '1 cup Pecans (coarsely chopped and
toasted)
¾ tsp. Cinnamon
2 Tbls. Honey
8 slices Country Style Bread (1” thick)
6 Eggs (beaten)
2 cups Half-and-Half
1 ½ Tbls. Light Brown Sugar
¼ tsp. Nutmeg',
  'Stir together pecans, ½ tsp. cinnamon and honey to make a soft paste.  Slice bread horizontally through the middle, leaving bread connected at one end.  Evenly spread 1 Tbls. Pecan mixture inside the opening of each slice.  Arrange bread in a single layer in a large, shallow baking dish.  Whisk together eggs, half-and-half, sugar, ¼ tsp. cinnamon and nutmeg.  Pour over bread and turn slices to coat evenly.  Let stand for 10 minutes.  Cook until heated through and golden on both sides.',
  'Williams Sonoma'
);

-- ==== Dessert ====
insert into recipes (title, category, ingredients, instructions, source) values (
  'Apple Crisp',
  'Dessert',
  'Apples
Cinnamon
1 cup Sugar
1 cup Brown Sugar
1 cup Margerine (melted)
½ cup Milk or Cream
1 cup Nuts (chopped)
1 tsp. Vanilla',
  'Butter a 9x13 pan.  Add sliced apples until half full.  Top with cinnamon and sugar.
Blend, then spread over the apples.  Bake at 350o for 1 hour.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Apricot Soufflé',
  'Dessert',
  '6 oz. Dried Apricots
1 ½ cups Water
¾ cup Sugar
1 Tbls. Fresh Lemon Juice
1 Tbls. Dark Rum (if desired)
½ tsp. Vanilla
5 Large Egg Whites
¼ tsp. Cream of Tartar',
  'Simmer apricots, water, and ½ cup sugar, covered, 20 minutes.  Puree mixture until very smooth.  Force puree through a fine sieve and stir in lemon juice, vanilla, rum and a pinch of salt.  Cool completely.  Beat egg whites with cream of tartar and a pinch of salt until they hold soft peaks.  Beat in remaining ¼ cup sugar, a little at a time, just until stiff peaks form.  Stir about ¼ of meringue into puree, then fold in remaining meringue.  Put in buttered, sugared dishes.  Bake at 350o for 20-25 minutes, until puffed and golden.',
  'Food Network'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Banana Oatmeal Cookies',
  'Dessert',
  '¾ Cup Shortening
1 Cup Sugar
1 Egg
1 ½ Cup Flour (sifted)
1 tsp. Salt
½ tsp. Soda
¾ tsp. Cinnamon
¼ tsp. Nutmeg
1 Cup Banana (mashed)
1 ¾ Cup Oatmeal (quick cooking)
½ Cup Nuts',
  'Cream the shortening and sugar; blend in the egg.  Sift flour with salt, soda and spices.  Add to creamed mixture.  Stir in bananas, the oatmeal and nuts.  Bake at 325o for 7 – 10 minutes.  Do not overbake.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Blonde Brownies',
  'Dessert',
  '1/3 Cup Shortening (melted)
1 Cup Brown Sugar
1 Tbsp. Water (hot)
1 Egg (beaten)
1 tsp. Vanilla
1 Cup Flour
½ tsp. Baking Powder
1/8 tsp. Soda
½ tsp. Salt
½ Cup Nuts (chopped)',
  'Blend well.
Mix, then add in small amounts.
Put in 9x9 greased pan.  Sprinkle with ½ cup Chocolate Chips.  Bake at 350o for 20-25 minutes.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Blueberry Pizza Dessert',
  'Dessert',
  '1 package Yellow or White Cake Mix
1 ¼ Cups Quick Cooking Oats
½ Cup Butter (softened)
1 Egg
½ Cup Nuts (chopped)
¼ Cup Brown Sugar
½ tsp. Cinnamon
1 can Blueberry Pie Filling',
  'Combine cake mix, 1 cup oats and 6 tablespoons butter until crumbly.  Reserve 1 cup crumbs.  Blend egg into remaining crumbs.  Press into pan forming a short rim.  Bake at 350o for 12 minutes.
Add remaining ¼ cup oats, 2 tablespoons butter, nuts, sugar and cinnamon to remaining crumbs.  Spread crust with pie filling and sprinkle with reserved crumbs.  Bake 15-20 minutes or until crumbs are light golden brown.',
  'Pampered Chef'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Broiled Frosting',
  'Dessert',
  '6 Tbls Butter (melted)
¼ Cup Quick Oats
1 ½ Cup Brown Sugar
¼ Cup Half and Half
1 Cup Coconut
1 tsp Vanilla
Nuts',
  'Mix until combined.  Spread on hot cake and place under broiler until bubbling and browned.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chocolate Chip Cake',
  'Dessert',
  '1 box Yellow Cake Mix
1 box Vanilla Instant Pudding
1 box Chocolate Instant Pudding
5 Eggs
1 ½ Cups Water
½ Cup Oil
6 oz. Chocolate or White Chips',
  'Grease and flour bundt pan.  Mix all ingredients except chocolate chips.  Beat for 2 minutes.  Stir in chips.  Bake at 350o for 1 hour.',
  'Judy Gasser'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chocolate Kiss Cookies',
  'Dessert',
  '1 ¾ Cups Flour
1 tsp. Soda
½ tsp. Salt
½ Cup Sugar
½ Cup Brown Sugar
½ Cup Shortening
½ Cup Peanut Butter
1 Egg
2 Tbls. Milk
1 tsp. Vanilla',
  'Cream the shortening and sugars.  Blend in the egg, milk, vanilla and peanut butter.
Sift together the dry ingredients.  Add to the creamed mixture.
Bake at 350o until golden.  While hot from oven, press a Brach’s chocolate star into each cookie.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chocolate Mousse',
  'Dessert',
  '1 3/4 cups whipping cream
12 ounces semi -sweet chocolate chips
3 ounces espresso or strong coffee
1 tablespoon dark rum
4 tablespoons butter
1 teaspoon flavorless, granulated gelatin',
  'Combine chocolate chips, coffee, rum and butter. Melt over barely simmering water, stirring constantly. Remove from heat while a couple of chunks are still visible. Cool, stirring occasionally.
Pour 1/4 cup whipping cream into a metal measuring cup and sprinkle in the gelatin. Bloom gelatin in ¼ cup cream for 10 minutes. Then melt the gelatin in simmering water until smooth.  Stir mixture into the cooled chocolate and set aside.
Beat cream to medium peaks. Stir 1/4 of the whipped cream into the chocolate mixture to lighten it. Fold in the remaining whipped cream in two doses. There may be streaks of whipped cream in the chocolate and that is fine. Do not over work the mousse.
Spoon into bowls or martini glasses and chill for at least 1 hour. Garnish with fruit and serve.',
  'Alton Brown'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chocolate Soufflé',
  'Dessert',
  '¼ cup Sugar
8 oz. Bittersweet Chocolate
8 Tbls. Unsalted Butter
2 Tbls. Heavy Cream
4 Egg Yolks
7 Egg Whites
¼ tsp. Cream of Tartar',
  'Finely chop chocolate.  Melt butter over low heat.  Add cream and bring just to a boil.  Remove from heat, and add chocolate, stirring until smooth.  Transfer mixture to a large bowl and stir in yolks.  Beat whites with cream of tartar and a pinch of salt until they just hold stiff peaks.  Gradually add sugar, beating until just combined.  Stir 1/4 of whites into chocolate.  Fold in remaining whites.  Divide into 6 buttered, sugared ramekins.  Bake at 375o 20 minutes until puffed and surfaces are cracked.',
  'Food Network'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Coconut Cream Pie',
  'Dessert',
  'Fillin
2/3 Cup Sugar
1/4 tsp. Salt
1/3 Cup Cornstarch
2 Tbls. Flour
3 Cups Milk
3 Eggs (slightly beaten)
1 Tbls. Butter
2 tsp. Vanilla
1 1/4 Cup Coconut
Meringue
3 Egg Whites
¼ tsp. Cream of Tartar
6 Tbsp. Sugar',
  'Mix salt, sugar and cornstarch in saucepan.  Gradually stir in milk.  Stir over medium heat until mixture thickens and boils.  Boil 1 minute.  Slowly stir half of hot mixture into slightly beaten egg yolks.  Beat into remaining hot mixture.  Boil 1 minute, stirring constantly.  Remove from heat.  Blend in butter and vanilla.  Cool, then fold in coconut.  Pour filling into baked pie shell.
Beat egg whites with cream of tartar until frothy.  Gradually beat in sugar.  Beat until stiff and glossy.  Bake at 400o for 8-10 minutes until brown.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Creamy Caramel Sauce',
  'Dessert',
  '¼ cup Sugar
¼ cup Water
6 Tbls. Light Corn Syrup
1/2 cup Heavy Cream
½ tsp. Vanilla',
  'Simmer sugar, water, corn syrup, and a pinch of salt, stirring until sugar is dissolved.  Boil mixture, without stirring, until a golden caramel.  Remove pan from heat and add cream and vanilla, stirring until combined well, about 1 minute.  Cool sauce at room temperature (sauce will thicken as it cools).  Sauce keeps, covered and chilled, 3 weeks.  Bring sauce to room temperature before serving.',
  'Food Network'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Crème Brulee',
  'Dessert',
  '½ cup Half-and-Half
1 tsp. Vanilla
4 Egg Yolks
1/3 cup Sugar
1 ½ cups Heavy Cream',
  'Scald the half-and-half in a saucepan over medium heat.
Whisk the egg yolks and sugar in a bowl.  Very slowly pour the hot half-and-half into the eggs, whisking constantly.  Whisk in the heavy cream and vanilla.
Fill 4 ramekins with the mixture and place in a baking pan.  Add enough hot water to come halfway up the dishes.  Bake the custards for 35 minutes, until the edges are set and the middles are slightly jiggly.
Leave in the water until cool, then chill.
Evenly coat with sugar and caramelize.',
  'Teens Cook'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Custard Ice Cream',
  'Dessert',
  '2 cups Milk
2 Eggs (beaten)
¾ cup Sugar
1 Tbls. Flour
¼ tsp. Salt
2 cups Half-and-half
2 tsp. Vanilla',
  'Scald in a double boiler.
Combine, then add to milk.  Stir constantly until thickened.
Add half-and-half and vanilla.  Freeze',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Divinity Candy',
  'Dessert',
  '3 ½ Cups Sugar
½ Cup White Karo Syrup
½ Cup Cold Water
3 Egg Whites (stiffly beaten)
1 tsp Vanilla
2 Cups Nuts (chopped)',
  'Cook sugar, Karo, and water to soft ball stage.   Add ½ cup to the beaten egg whites and mix thoroughly.
Cook the remainder to hard crack stage and add slowly to egg white mixture.  Beat thoroughly add vanilla, a speck of salt and nuts.  Drop from spoons onto oiled paper.',
  'Theo Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Double Chocolate Gooey Butter Cake',
  'Dessert',
  'Crust:
1 stick Butter (melted)
1 package Chocolate Cake Mix
1 Egg
Topping:
8 oz. Cream Cheese (softened)
2 Eggs
4 Tbls. Cocoa Powder
16 oz. Powdered Sugar
1 stick Butter (melted)
1 tsp. Vanilla
1 cup Nuts (chopped)',
  'Combine and stir until well blended.  Pat mixture into lightly buttered 9 x 13 pan.
Beat the cream cheese until smooth.  Add eggs and cocoa powder.  Lower the speed of the mixer, and add the powdered sugar.  Continue beating until mixture is well mixed.  Slowly add the butter and vanilla; beat until smooth.  Stir in nuts.  Spread over the cake mixture in the pan.  Bake at 350o for 40-50 minutes.  Be careful not to over bake – it will be a little gooey when finished.',
  'Food Network'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'English Toffee',
  'Dessert',
  '2 Cups Sugar
1 lb. Butter (not margarine)
¼ Cup Water
1 Cup Nuts (chopped)',
  'Mix and cook over high heat until the thermometer is at 290o (hard crack).  Stir constantly.  Pour onto 2 greased cookie sheets and spread as thinly as possible.  Pour milk chocolate chips on top and spread when soft (a minute or two).  Sprinkle with a few more chopped nuts.  Refrigerate until hard, then break into pieces.',
  'Jenny Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Fantasy Fudge',
  'Dessert',
  '1 ½ sticks Margarine
3 Cups Sugar
1 5oz. can Evaporated Milk
12 oz. Chocolate Chips
1 tsp. Vanilla
7 oz. Marshmallow Cream
Nuts (chopped)',
  'Mix margarine, milk and sugar;  Bring to a full rolling boil over medium heat.  Boil for 5 minutes stirring constantly.  Remove from heat.  Add chocolate chips and stir until melted.  Add remaining ingredients and stir until smooth.  Pour into a 13x9 pan.',
  'Melvina Harvey'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Haystacks',
  'Dessert',
  '2 cups Sugar
½ cup Cocoa
½ cup Evaporated Milk
8 Tbls. Butter
¼ tsp. Salt
3 cups Quick Cooking Oats
1 cup Coconut
1 tsp. Vanilla
½ cup Nuts (chopped)',
  'Cook to 210-215o, stirring constantly.
Quickly combine with chocolate mixture.  Put by spoonfuls onto waxed paper while hot.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Lemon Meringue Pie',
  'Dessert',
  'Filling
1 ½ Cups Sugar
1/3 Cup Cornstarch
1 ½ Cups Water
3 Egg Yolks (slightly beaten)
3 Tbls. Butter
¼ Cup Lemon Juice
Meringue
3 Egg Whites
¼ tsp. Cream of Tartar
6 Tbsp. Sugar',
  'Mix sugar and cornstarch in saucepan.  Gradually stir in water.  Stir over medium heat until mixture thickens and boils.  Boil 1 minute.  Slowly stir half of hot mixture into slightly beaten egg yolks.  Beat into remaining hot mixture.  Boil 1 minute, stirring constantly.  Remove from heat.  Continue stirring until smooth.  Blend in butter and lemon juice.  Pour hot filling into baked pie shell.
Beat egg whites with cream of tartar until frothy.  Gradually beat in sugar.  Beat until stiff and glossy.  Bake at 400o for 8-10 minutes until brown.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Lemon Squares',
  'Dessert',
  '2 Cups Flour
½ Cup Powdered Sugar
2 sticks Butter
2 Cups Sugar
4 Eggs (beaten)
1/3 Cup Lemon Juice
Lemon Zest (from 1 lemon)
¼ Cup Flour
½ tsp. Baking Powder',
  'Mix the 2 cups flour and powdered sugar.  Cut in butter.  Press evenly into an 11x13 pan; bake at 350o for 20-25 minutes until light brown.  Beat eggs; add sugar, lemon and zest; beat well.  Slowly mix in ¼ cup flour and baking powder; mix well.  Pour over hot crust and bake for 20-25 minutes more until slightly browned.  Sprinkle with powdered sugar.',
  'Betsy Keith'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Oatmeal Cake',
  'Dessert',
  '1 Cup Quick Oats
1 ½ Cups Water (boiling)
1 Cup Sugar
1 Cup Brown Sugar
½ Cup Shortening
2 Eggs (beaten)
1 ½ Cups Flour
½ tsp Nutmeg
1 tsp Soda
1 tsp Vanilla
½ tsp Salt',
  'Add oats to boiling water.  Let sit while making cake.
Cream together.
Mix dry ingredients.  Add a little at a time to the sugar mixture.  Add vanilla and oatmeal.  Bake 30 minutes (until a toothpick inserted in center comes out clean) in a greased and floured 9 x 13 pan at 350º.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Peach Cobbler',
  'Dessert',
  '1/4 cup brown sugar
1/4 cup white sugar
1/2 cup all-purpose flour
1 teaspoon ground cinnamon
1/2 teaspoon salt
10 cups peaches, thawed, about 3 pounds prepared
1 teaspoon cornstarch dissolved in 1 Tbls water
1 lemon, juiced
1 teaspoon butter
For the crumb topping:
3/4 cup brown sugar
1/4 cup sugar
3/4 cup all -purpose flour
3/4 cup oats
1/4 cup slivered almonds
1/2 teaspoon freshly grated nutmeg
1 teaspoon ground cinnamon
1/2 teaspoon salt
1 stick unsalted butter',
  'Preheat oven to 450 degrees F.
In a large bowl, stir together sugars, flour, Cinnamon and salt. Add peaches and gently toss to coat. Mix together cornstarch slurry and lemon juice and stir into peaches.  Place peach mixture in a 9x13 baking dish.
Combine dry ingredients, add in butter and combine with hands until crumbly.
Top peaches with half of the crumb topping. Place in oven and immediately reduce oven temperature to 350 degrees F.  Bake uncovered for 30 minutes, then add remainder of the crumb topping.  Reduce heat to 325 degrees F and bake until golden and bubbling, another 45 minutes. Remove from oven and let sit for 15 minutes before serving.',
  'Guy Fieri'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Peanut Brittle',
  'Dessert',
  '1 ½ Cups Sugar
1 Cup White Karo Syrup
Pinch of Salt',
  'Stir until sugar melts; add 1 ¼ cup raw peanuts.
Cook until peanuts pop.  Add 1 tsp. soda.
Beat hard and pour thin.',
  'Theo Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Peanut Butter Fudge',
  'Dessert',
  '3 Cups Sugar
2/3 Cup White Karo Syrup
¼ Cup Milk
2 Cups Peanut Butter
Butter (size of an egg)
1 tsp. Vanilla',
  'Boil to soft ball (232o).
Remove from heat and add remaining ingredients.  Stir slowly and pour into a buttered pan.  Score into pieces while warm.',
  'Theo Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pecan Pie',
  'Dessert',
  '½ cup Butter
½ cup White Sugar
¾ cup Light Karo
¼ cup Maple Syrup or Dark Karo
3 Eggs (beaten)
2 cups Pecans',
  'Mix.
Fold in nuts.  Pour into prepared 9 inch pie crust.  Bake at 325o for 1 hour.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pie Crust (for two-crust pie)',
  'Dessert',
  '2 Cups Flour
1 tsp. Salt
2/3 Cup Shortening
2 Tbls. Butter
4 Tbls. Water (COLD)
(I add 2 Tbls. Sugar)
You can halve this recipe – use 1 ¼ c. flour',
  'Mix flour and salt.  Cut in shortening and butter until texture is like coarse cornmeal.
Take 1/3 of mixture; add water to form a paste.  Put back into the remaining flour and mix until combined.
Form a ball then press down.  Cover with plastic wrap.  Let sit at least 20 minutes before rolling.',
  'Dani Brown'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pizelles',
  'Dessert',
  '6 Eggs
2 sticks Butter
1 ½ cups Sugar
1 tsp. Orange Extract
1 tsp. Orange Rind
1 Tbls. Vanilla
3 ½ cups Flour
4 tsp. Baking Powder',
  'Melt butter, beat with eggs until foamy.  Add sugar and flavorings.  Add flour and baking powder a little at a time.  Drop by tablespoons on the hot iron.',
  'Peggy Cannon'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pumpkin Cookies',
  'Dessert',
  '½ cup Shortening
1 cup Sugar
1 cup Pumpkin
1 Egg
1 tsp. Vanilla
½ cup Nuts
2 cups Flour
1 tsp. Baking Powder
1 tsp. Soda
1 tsp. Salt
1 tsp. Cinnamon',
  'Cream together well.
Add to creamed mixture.
Stir together dry ingredients.  Add to pumpkin mixture.  Bake on a greased cookie sheet at 350o about 8 minutes.  Do not over bake.
Frosting:
Butter (softened)       Powdered Sugar
Cream Cheese          Nutmeg                     Cinnamon',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Pumpkin Pie',
  'Dessert',
  '¾ cup Brown Sugar
1 Tbsp. Flour
½ tsp. Salt
2 ¼ tsp. Pumpkin Pie Spice
1 ½ cups Pumpkin (canned)
1 1/3 cup Evaporated Milk
1 Egg (slightly beaten)
Topping:
½ cup Pecans (chopped)
1 Tbls. Butter
2 tbls. Brown Sugar
1 ½ tsp. Orange Rind (grated)',
  'Mix the dry ingredients; add the rest.  Beat until smooth.  Bake at 350o for 50 minutes.
Mix together.  Decorate the top of the pie, then return to the oven for 10-15 minutes.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Snickerdoodles',
  'Dessert',
  '½ cup Shortening
¾ cup Sugar
1 Egg
1 cup + 6 Tbls. Flour
1 tsp.  Cream of Tartar
½ tsp. Soda
¼ tsp. Salt',
  'Cream together until light and fluffy.
Mix together dry ingredients.  Blend into creamed mixture until just combined.
Chill the dough.  Roll into balls the size of small walnuts.  Roll in a mixture of 2 Tbls. Sugar and 2 tsp. Cinnamon to coat.  Bake at 350o until lightly browned buy still soft.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Sour Cream Chocolate Cake',
  'Dessert',
  '2 Tbls. Cocoa
2 cups Sugar
½ cup Butter
2 Eggs
2/3 cup Sour Cream
2 ½ cups Flour
2 tsp. Soda
1 cup Water (boiling)
1 tsp. Vanilla
1 tsp. Salt',
  'Dissolve cocoa in a small amount of water.  Add sugar; mix well.  Add butter; beat well.  Add eggs and sour cream; add soda and flour.  Beat into sugar mixture.  Add boiling water and vanilla.  This is a thin batter.  Pour into greased and floured cake pans.  Bake at 325o for 45 minutes.
Frosting
6 Tbls. Cocoa
6 Tbls. Coffee (hot and strong)
6 Tbls. Butter
1 tsp. Vanilla
3 cups Powdered Sugar',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Strawberry Pie',
  'Dessert',
  '1 Pie Shell (baked)
1 pint Fresh Strawberries (sliced)
1 cup Sugar
3 Tbls. Flour
1 cup Water (boiling)
4 Tbls. Strawberry Jello',
  'Mix sugar and flour.  Stir in water.  Cook until thick. Stir in jello.  Cool to room temperature.  Place strawberries in baked pie shell; pour mixture over.  Chill.',
  'Judy Kerstetter'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Sugar Cookies',
  'Dessert',
  '½ Cup Unsalted Butter (softened)
¾ Cup Sugar
1 Egg
1 tsp. Vanilla
2 Cups Flour
¼ tsp. Salt
¼ tsp. Baking Powder',
  'Cream together butter and sugar until fluffy.  Beat in egg and vanilla.  Mix the dry ingredients together and stir into butter mixture until well blended.  Dough should be very stiff.  Chill 1-2 hours.
Divide dough into quarters.  Roll out to 1/8” thick on lightly floured board.  Dust top with flour and cut.
Bake at 375o for 8-10 minutes.',
  NULL
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Vanilla Ice Cream',
  'Dessert',
  '2 Cups Milk
1 tablet Rennet
¾ cup Sugar
¼ tsp. Salt
1 cup Whipping Cream
1 ½ cup Half-and-half
2 tsp. Vanilla',
  'Heat milk until barely lukewarm.  Add rennet tablet (dissolved in 2 Tbls. Cold water).
Add sugar and salt.  Cool to room temperature.
A cream, half-and-half, and vanilla.  Freeze.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Vanilla Rum Crème Anglaise',
  'Dessert',
  '2 cups Half-and-half
½ Vanilla Bean (split lengthwise)
5 Egg Yolks
¼ cup Sugar
1 Tbls. Dark Rum',
  'Bring half-and-half just to a boil with vanilla bean and remove from heat.  Scrape seeds from bean with a knife into the half-and-half.
Whisk together yolks, sugar, and a pinch of salt and whisk in hot half-and-half in a stream.  Return to pan and cook over moderately low heat, stirring occasionally with a wooden spoon, until thickened, but do not let boil.  Pour sauce through a fine sieve and cool, stirring occasionally.  Stir in rum.  Chill.',
  'Food Network'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'White Chocolate Fudge',
  'Dessert',
  '2 Cups Sugar
½ Cup Margarine
¾ Cup Sour Cream
12 oz. White Chocolate Chips
1 jar Marshmallow Cream
¾ Cup Pecans (chopped)',
  'Combine sugar, sour cream and margarine in a heavy saucepan.  Bring to a full rolling boil; stirring constantly.  Continue boiling for 7 minutes or until 234o; stirring constantly to prevent scorching.  Remove from heat; stir in white chocolate chips until melted.  Add remaining ingredients and stir until well mixed.  Pour into a greased 8 or 9 inch square pan.',
  'Neoma Shrauner'
);

-- ==== Dinner ====
insert into recipes (title, category, ingredients, instructions, source) values (
  'Bar-B-Que Brisket',
  'Dinner',
  '1 4-5 lb. Brisket
Meat Tenderizer
2 Tbls. Liquid Smoke
Salt and Pepper
1 tsp. Celery Salt
1 tsp. Paprika
½ tsp. Nutmeg
1 tsp. Garlic Salt
1 tsp. Onion Salt',
  'Trim all fat from the brisket.  Rub in the other ingredients and let stand for 2 hours.
Sprinkle over the meat before placing in the oven.  Seal the brisket in heavy foil and bake at 300o for 3-4 hours (or all night on 200o).  Remove from the oven.  Cool and slice very thin with against the grain.',
  'Janice Gean'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Bar-B-Que Ribs',
  'Dinner',
  '2 Tbls. Kosher Salt
2 Tbls. Paprika
4 tsp. Granulated Garlic
4 tsp. Chile Powder
2 tsp. Black Pepper
1 tsp. Ground Cumin
1 rack Baby Back Ribs',
  'Mix the rub ingredients.
Remove the membrane from the ribs.  Cover the ribs with the rub (put more on the meaty side).  Allow to stand at room temperature for 30 minutes.
Preheat the grill to 250o – 300o. Place the ribs over indirect heat with bone side down.  Cook for 1 hour.
Lightly baste ribs with sauce.  Continue to cook for 1 hour.
Baste again; Turn over and cook for a third hour.
Check ribs.  They are done when the rack bends easily and the meat tears when lifted.  Let rest 10-15 minutes.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Bar-B-Que Sauce (for Brisket)',
  'Dinner',
  '½ Cup Onion (chopped)
½ Cup Oil
2 8 oz. Cans Tomato Sauce
½ Cup Water
2 Tbls. Lemon Juice
1 tsp. Salt
½ tsp. Pepper
2 Tbls. Worcestershire Sauce
1 tsp. Dry Mustard
2 Tbls. Brown Sugar',
  'Stir all together; simmer for ½ hour to cook the onion.',
  'Janice Gean'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Bar-B-Que Sauce (for Ribs)',
  'Dinner',
  '¾ Cup Apple Juice
½ Cup Ketchup
3 Tbls. Soy Sauce
1 tsp. Worcestershire Sauce
¼ tsp. Black Pepper
2 Tbls. Butter
1 Shallot (minced)
2 Tbls. Apple Cider Vinegar
1 Tbls. Brown Sugar
1 tsp. Ground Chipotle
1 tsp. Chile Powder',
  'Stir all together; simmer for ½ hour to cook the shallot.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Beef Stroganoff',
  'Dinner',
  '1 lb. Sirloin Steak (cut into thin strips)
2 Tbls. Butter
1 lb. Mushrooms (sliced)
½ Cup Onion (diced)
1 10 ½ oz. Can Beef Broth
¼ tsp. Garlic Powder
1 tsp. Salt
¼ tsp. Onion Salt
3 Tbls. Flour
1 Cup Sour Cream
Noodles (cooked)',
  'Melt butter; sauté mushrooms and onions for 5 minutes.  Add meat, brown lightly.  Add broth, garlic powder, salt and onion salt.  Cover and cook 3-5 minutes.  Stir flour into sour cream.  Reduce heat and add sour cream to meat.  Stir and heat until thickened.  Serve over hot cooked noodles.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Beef Stroganoff Casserole',
  'Dinner',
  '1 pound Ground Beef
¼ tsp. Salt
1/8 tsp. Black Pepper
1 tsp. Oil
8 oz. Mushrooms (sliced)
1 large Onion (chopped)
3 cloves Garlic (minced)
¼ cup Dry White Wine
1 can Mushroom Soup
½ cup Sour Cream
1 Tbls. Dijon Mustard
4 cups Egg Noodles (cooked)',
  'Season beef with salt and pepper.  Brown over medium heat until no longer pink.  Drain and set aside.
Heat oil in same skillet.  Add mushrooms, onion and garlic.  Cook until onion is tender.  Add wine.  Reduce heat to medium low and simmer 3 minutes.  Remove from heat; stir in soup, sour cream and mustard until well combined.  Return beef to skillet.
Place noodles in greased 9x13 pan.  Stir in meat mixture until coated.  Bake at 350o for 30 minutes.  Sprinkle with chopped parsley, if desired.',
  'Debbie Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Bernaise Sauce',
  'Dinner',
  '¼ Cup White Wine Vinegar
¼ Cup Dry White Wine
3 Tbls. Shallots (minced)
1 Tbls. Fresh Tarragon (chopped)
2-3 Tbls. Water
4 Egg Yolks
1 Cup Butter (melted)',
  'Bring vinegar, wine, shallots and tarragon to a boil over medium-high heat.  Boil until liquid is evaporated.  Off heat, add water, then whisk in egg yolks until frothy.  Gradually drizzle in butter, whisking constantly to incorporate.  Thin with water if needed.  If too thin, return to low heat and whisk constantly until thickened.
Strain sauce into a heatproof cup.  Season with lemon juice, salt, white pepper, and cayenne pepper to taste.',
  'Cuisine at Home'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Borscht',
  'Dinner',
  '1/2 pound bacon, diced
1 lb. beef chuck, cut into bite-size pieces
1 cup chopped yellow onions
1 carrot, peeled and grated
1 tablespoon minced garlic
2 teaspoons dried oregano
2 teaspoons dill seeds
2 bay leaves
3 tablespoons red wine vinegar
2 quarts water or beef broth
1 teaspoon salt
1 teaspoon ground black pepper
1 1/2 pounds red beets
1 tablespoon vegetable oil
1 large russet potato
6 cups shredded green cabbage
Salt and black pepper
1 cup sour cream',
  'Cook bacon until the fat begins to render. Add the beef and cook until brown on all sides. Remove the meat from the pan.
Add the onions and carrots. Cook until soft. Add the garlic, oregano, dill seeds and bay leaves and cook for 1 minute. Deglaze pan with red wine vinegar.  Return the meat to the pot and add the water, salt, and pepper and bring to boil. Reduce the heat and simmer partially covered until the beef is tender, about 2 hours.
Brush beets with oil; roast at 350o about 1 hour. Let cool and remove the skins. Coarsely grate and set aside.
When the meat is tender, add the beets, potatoes and cabbage. Simmer over low heat for 30 minutes. Season with red wine vinegar, salt and freshly ground black pepper, to taste.
Serve with sour cream and dill.',
  'Emeril Lagasse'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Brown Shoyu Sauce',
  'Dinner',
  '½ Cup Mirin
¼ Cup Sake
¼ cup Soy Sauce
2 Tbls Brown Sugar
4 Garlic Cloves (peeled)
2 Akatogarashi (Japanese dried chilies)',
  'Pour the mirin and sake into a small saucepan; bring to a simmer over medium heat.  Add the shoyu, sugar, garlic and red chilies.  Turn the heat to low and cook for 8 minutes.  Cool and store in a jar with a lid.  Remove the garlic the next day, but leave the chilies.  This sauce keeps several months in the refrigerator.',
  'Central Market'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Canneloni',
  'Dinner',
  '12 Canneloni Shells
3 Cups Tomato Sauce
2 Tbls. Parmesan Cheese
¼ Onion
1 tsp. Garlic (minced)
2 Tbls. Olive Oil
1 10 oz. package Spinach
1 Lb. Ground Beef
¼ Cup + 1 Tbls. Parmesan
2 Tbls Whipping Cream
2 eggs
½ tsp. Oregano
¼ Cup +2 Tbls. Butter
¼ Cup +2 Tbls. Flour
1 Cup Milk
1 Cup Whipping Cream
1/8 tsp. Pepper
2 Tbls Butter',
  'Cook shells.  Combine tomato sauce and 2 Tbls. parmesan in a saucepan stirring constantly until heated through.  Spread 1 cup in 9x13 pan.  Saute onion and  garlic in olive oil.  Add spinach, cook until just tender.  Remove and brown ground beef.  Add spinach, ¼ cup parmesan, 2 tbls whipped cream, eggs, oregano and mix well.  Fill shells.  Place in pan.
Make white sauce and pour over shells.  Spoon remaining tomato sauce over cream sauce.  Dot with butter.  Bake at 375o for 20 minutes.',
  'Jenny Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Cavatini',
  'Dinner',
  '3 cups Assorted Macaroni
1 ½ lbs. Hamburger
1 cup Onion (chopped)
½ cup Green Pepper(chopped)
8 oz. Mushrooms (sliced)
2 cans Tomato Sauce
1 Tbls. Sugar
1 tsp. Salt
1 tsp. Pepper
½ cup Ripe Olives (sliced)
2 tsps. Italian Seasoning
12 oz. Pepperoni (sliced)
½ cup Cheddar (shredded)
½ cup Mozzerella (shredded)',
  'Cook macaroni according to package directions.
Brown hamburger and drain.  In a separate pan, saute onions and green peppers until tender; add mushrooms and cook until tender.  Add browned hamburger.  Mix in rest of ingredients except cheeses.  Pour into 9x13 baking dish.  Top with cheeses.  Bake at 350o for 25 minutes.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chalupa',
  'Dinner',
  '3 pound Pork Roast
1 pound Dry Pinto Beans
2 Tbls. Garlic (minced)
2 Tbls. Leaf Oregano
2 ½ Tbls. Chili Powder
2 Tbls. Cumin Seeds
5 Tbls. Picante Sauce
1 quart Water
1 tsp. Salt',
  'Pick through beans to remove trash.  Rinse.  Put in crock pot.  Add all except pork roast.  Clean the roast, removing visible fat.  Place on top of beans.  Cook in crockpot until meat falls apart (about 10 hours on low).  Remove meat and continue to cook beans until tender.  Cool meat, then shred.  Stir meat into beans and heat through.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chicken Enchiladas',
  'Dinner',
  '12 Tortillas
Filling
1 cup Chicken (cooked and shredded)
½ pkg. Taco Seasoning
½ cup Picante
½ cup Sour Cream
1 ½ cup Cheddar Cheese
½ can Cream of Chicken Soup
Sauce
½ can Cream of Chicken Soup
1 can Cream of Mushroom Soup
1 ½ - 2 cups Sour Cream',
  'Mix together.  Roll into tortillas.
Put a little sauce into a 9x13 pan.  Put enchiladas in pan, then cover with sauce.  Cover with cheddar cheese and black olives.  Bake at 350o until bubbly.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chicken Salad',
  'Dinner',
  '8 cups Chicken (cooked and diced)
8 Tbls. Green Olives (sliced)
8 Tbls. Ripe Olives (sliced)
8 Tbls. India Relish
2 cups Celery (chopped)
small bag Slivered Almonds (toasted)
4 oz. Cocktail Onions (drained)
8 oz. Water Chestnuts (chopped)
Salt, Pepper, Dill and Chives
Mayonnaise',
  'Mix together.  Gently stir in enough mayonnaise to moisten.  Add salt, pepper, dill and chives to taste.',
  'Marlene Woolfolk'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chicken Souffle',
  'Dinner',
  '2 Cups American Cheese (chopped)
1 Onion (chopped)
2 Cups Celery (Diced)
1 Chicken (cooked and chopped)
6 Eggs (hard-boiled and chopped)
1 Can Cream of Mushroom Soup
1 lb. Box Ritz Crackers (crushed fine)
6 Cups Chicken Broth
Sage and Salt (to taste)',
  'Cook the celery and onion in a little broth until tender; add the cheese and eggs.  Add sage and salt to taste.  Add all but 1 cup of the Ritz cracker crumbs. Add enough broth to moisten well.  The mixture will be a little soupy.  Add chicken and mushroom soup.
Place mixture in a large casserole; sprinkle with the reserved crumbs.  Bake at 350o for 30 minutes.  Let set a few minutes before serving.',
  'Bernice Woolfolk'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Chicken-Sour Cream Enchiladas',
  'Dinner',
  '1 Onion (chopped)
1 Tbls. Olive Oil
2 Cups Chicken (cooked & chopped)
16 oz. Sour Cream (divided)
4 Cups Pepper Jack (shredded)
12 Flour Torillas (6 inch)
3 Cans Green Chiles (diced)
1 ¼ Cup Milk
2 Tbls. Flour',
  'Saute onions in oil until tender.  Stir together chicken, ¼ cup sour cream, and 1 ½ cup cheese.  Stir in onion, ½ can green chiles and ½ package taco seasoning.  Spoon chicken mixture on one end of each tortilla.  Arrange in a 13x9 dish.  Whisk together 2 cans of chiles, milk and flour.  Stir until thickened, then gradually add 2 ½ cups cheese.  Stir constantly until cheese is melted.  Pour over enchiladas.  Spread remaining sour cream over the sauce.
Bake at 400o for 20 to 25 minutes.  Drain remaining chiles and evenly spread over the top.',
  'Southern Living'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Crescent Squares',
  'Dinner',
  '1 lb. Ground Beef
¼ Cup Onion (chopped)
1 tsp. Salt
½ tsp. Pepper
1/3 Cup Mushrooms (sliced)
1/2 Cup Sour Cream
1 8 oz. Package Crescent Rolls',
  'Brown the ground beef, onion, salt and pepper.  Drain.  Stir in mushrooms and sour cream.  Separate crescent dough into 2 large rectangular pieces; place in an ungreased 9x13 pan.  Press over bottom and ½ inch up sides to form a crust.  Pour hot meat into the crust.  Top with slices of American cheese. Bake at 350o for 20-25 minutes until brown and crusty.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Dynamite Sauce',
  'Dinner',
  '1 ½ Cups Mayonnaise
1-2 tsp Red Chili (ground)
¼ Cup Sriracha
¼ tsp. Sesame Oil',
  'Combine all ingredients.  Add salt to taste.',
  'Central Market'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Fajitas',
  'Dinner',
  'Marinade:
½ Cup Olive Oil
¼ Cup Red Wine Vinegar
1/3 Cup Lime Juice (about 3 limes)
1 tsp. Sugar
1 tsp. Oregano
½ tsp. Salt
½ tsp. Pepper
¼ tsp. Cumin
3 Cloves Garlic (minced)',
  'Pound 2 lbs. of meat (either skirt steak or chicken) to ¼ inch thickness.  Marinate 8 hours or overnight.  Grill to desired doneness.  Slice along grain.  Sauté 1 onion and 1 green pepper (in rings) in some of the marinade.  Serve with whatever fixin’s you like.',
  'Jenny  Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Grilled Shrimp',
  'Dinner',
  '2 lbs. Large Fresh Shrimp
Marinade:
4 cloves Garlic (crushed)
1 Cup Olive Oil
½ Cup Fresh Basil (finely chopped)
2 Tbls. Vinegar
1 Tbls. Worcestershire Sauce
½ tsp. Hot Sauce',
  'Combine marinade and mix well.  Toss with shrimp to coat.  Cover and marinate 2 to 3 hours in the refrigerator, stirring occasionally.
Skewer shrimp.  Cover over medium coals 3 to 4 minutes a side, basing frequently with extra marinade.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Lasagna',
  'Dinner',
  '1 lb. Hamburger
1 clove Garlic (minced)
1 Bay Leaf
1 Tbls. Basil
1 lb. Stewed Tomatoes
1 small Onion (chopped)
2 – 6 oz. cans Tomato Sauce
3 cups Ricotta or Cottage Cheese
½ cup Parmesan (grated)
2 Tbls. Parsley Flakes
2 Eggs
2 tsp. Salt
½ tsp. Pepper',
  'Brown meat slowly; drain fat.  Add remaining ingredients and simmer uncovered for 30 minutes.
Cook lasagna noodles until tender; drain.
Mix cheese filling ingredients.  Place half of cooked noodles in 9x13 baking dish.  Spread with half of cheese filling.  Cover with ½ pound mozzarella cheese (thinly sliced) and half of meat sauce.  Repeat.  Bake at 350o for 30 minutes.  Let stand at least 10 minutes.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Mexican Cornbread',
  'Dinner',
  'Step 1:
½ pound Sharp Cheddar (shredded)
1 large Onion (chopped)
1 Jalapeno Pepper (chopped)
1 pound Hamburger (browned)
Step 2:
1 cup Yellow Cornmeal
½ tsp. Soda
1 Tbls. Salt
½ cup Salad Oil
1 cup Milk
2 Eggs (beaten)
1 can Creamed Corn',
  'Mix all ingredients of step 2.
Put ½ of Step 2 in a greased 9 x 13 pan.  Sprinkle with Step 1 in order stated.  Finish with remainder of Step 2.
Bake at 350o for 45 minutes.',
  'Neoma Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Quiche',
  'Dinner',
  '1 cup Milk
3 Eggs
½ cup Bisquick
Garlic Salt
Pepper
Onions (chopped)
Sausage (browned)
Broccoli (1/2 frozen box, cooked)
1 cup Swiss Cheese (grated)',
  'Mix until smooth.
Pour over a 9 inch pie crust filled with:
Bake at 375o for 45 minutes to 1 hour.',
  'Mary Jane Alland'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Red Beans & Rice',
  'Dinner',
  '2 Onions (diced)
1 Bell Pepper (seeded and diced)
1 stalk Celery (diced)
1 lb. Dried Red Kidney Beans
2 links Andoulie Sausage (diced)
3 Bay Leaves',
  'Put all ingredients in crock pot.  Add chicken stock to cover by 2 inches.  Bring to a boil; cover, reduce heat and simmer for 2 hours.  Stir periodically, adding water if needed to keep covered by 1 inch.
Continue cooking until the beans are creamy and beginning to fall apart when stirred.
Season with salt, black pepper and Tabasco if desired.  Serve over white rice.',
  'John Besh'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Salisbury Steaks',
  'Dinner',
  '1 ½ lbs. Ground Beef
½ Cup Bread Crumbs
¼ Cup Onion (chopped)
1/3 Cup Water
1 Can Mushroom Soup
1 Egg (beaten)
Pepper (to taste)',
  'Mix ¼ cup mushroom soup with the rest of the ingredients except the water.  Form into 6 patties.  Bake at 350o for 45 minutes.  Spoon off the fat.  Mix the soup with the water and pour over the patties, then bake for 15 more minutes.',
  'Neoma  Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Salmon Souffle',
  'Dinner',
  '2 Tbls. Butter
¼ Cup Onion (finely chopped)
2 Tbls. Flour
¾ Cup Milk
½ tsp. Salt
¼ tsp. Dill Weed
1/8 tsp. Pepper
1 8 ounce Can Red Salmon
3 Egg Yolks (beaten)
1 Cup Creamed Cottage Cheese
3 Egg Whites (stiffly beaten)',
  'Melt butter over medium heat.  Add onion and cook 1 to 2 minutes.  Blend in flour; add milk and stir until mixture comes to a boil.  Stir in salt, dill weed and pepper.
Drain salmon; remove bones and mash in a mixing bowl.
Mix egg yolks and cottage cheese.  Stir in onion mixture and salmon.  Fold in egg whites.  Spoon into soufflé pan.  Bake at 300o for 60-70 minutes.',
  'Saladmaster'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Salmon Soup',
  'Dinner',
  '3 Tbls. Butter
3 Tbls. Flour
¼ Cup Onion (finely chopped)
2 Cups Milk
½ tsp. Dill
1 small Potato (cubed)
1 small can Corn (drained)
1 small can Red Salmon
(drained and cleaned)
Salt and Pepper (to taste)',
  'Cook potato in microwave on high for 2-3 minutes until tender.  Set aside.
Melt butter over medium heat; whisk in flour.  Cook for 2 minutes.  Add milk and cook until thickened.
Add remaining ingredients and cook until heated through.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Seared Steaks',
  'Dinner',
  '8 ounce Filets
2 Tbls. Olive or Vegetable Oil',
  'Preheat oven to 425o with rack in the center.
Season the steaks with salt and pepper.  Heat cast-iron skillet over medium-high heat for 5 minutes.  Sear filets in oil on one side for 4-5 minutes.  Turn them over,  place the pan in the oven and roast to the desired doneness.  Allow filets to rest for 5 minutes.
Rare:  Roast for 5 minutes
Medium-rare:  Roast for 7 minutes
Medium:  Roast for 9 minutes',
  'Cuisine at Home'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Spaghetti Carbonara',
  'Dinner',
  '1 pound Spaghetti
½ cup Butter
½ pound Bacon (chopped)
2 cups Smoked Sausage
1 large Onion (chopped)
2 cloves Garlic (minced)
½ pound Mushrooms (sliced)
½ cup Dry White Wine
1 cup Heavy Cream
2 Eggs (beaten)
¼ cup Parsley (chopped)',
  'Cook in boiling water according to package directions.
While spaghetti is cooking, melt butter in a large skillet and sauté bacon and sausage until golden brown.  Add onion and garlic; continue to sauté for 5 minutes.  Add mushrooms and sauté for 1 minute.  Stir in wine.  Beat cream and eggs until well blended.  Add to skillet.  Drain spaghetti and add to sauce.  Add parsley.  Stir over low heat until thick.  Do not let boil!  Season to taste with salt.  Serve immediately with freshly grated parmesan cheese.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Spaghetti with White Clam Sauce',
  'Dinner',
  '½ Cup Butter
¼ Cup Olive Oil
4 Cloves Garlic (minced)
3 6 ½ oz. Cans Chopped Clams
1 tsp. Oregano Leaves
1 Tbls. Fresh Basil (chopped)
¼ tsp. Red Pepper (crushed)
1 ½ Cups Parsely (chopped)
1 lb. Spaghetti or Linguine (cooked)',
  'Melt butter in the olive oil.  Add garlic and cook until golden.  Drain the juice from 2 of the cans of clams into butter mixture.  Add oregano, basil, red pepper and parsley; simmer for 5 minutes.  Add drained clams and heat through.
Toss the clam sauce with the spaghetti.',
  'Rex Shrauner'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Spicy Tuna',
  'Dinner',
  '8 oz. Fresh Sushi-grade Tuna
1 Tbls. Sesame Oil
1 Tbls. Sriracha
1 tsp. Soy Sauce',
  'Chop the tuna, combine the liquids and mix into the tuna.  Keep chilled until ready to roll.',
  'Central Market'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Sushi Rice',
  'Dinner',
  '3 Cups Polished Short Grain Rice
1 Piece Kombu (2”x2”)
2 Tbls Sake
3 ¾ Cup Water
6 Tbsp Komezu
2 Tbsp Sugar
2 2/3 tsp Salt',
  'Rinse rice until the water runs clear.  Drain for 30 minutes.  Put rice, kombu, sake and water in a pan with a tight lid.  Cook, uncovered, over medium heat until water level decreases to almost to the level of the rice.  Reduce heat to very low, cover with lid and cook until all water is absorbed ( 10-15 minutes).
Mix komezu, sugar and salt.  Pour rice into a large bowl, drizzle with dressing.  Toss rice for 2 minutes by cutting, lifing and flipping.  Fan rice briefly to cool and gelatinize the surface.  Pile into a mound and cover with a moist towel.',
  'Central Market'
);

insert into recipes (title, category, ingredients, instructions, source) values (
  'Whipped Mustard Sauce (for Ham)',
  'Dinner',
  '2 Egg Yolks
3 Tbls. Yellow Mustard
2 Tbls. Cider Vinegar
1 Tbls. Water
4 tsp. Sugar
¾ tsp. Salt
1 Tbls. Butter
1–2 Tbls. Prepared Horseradish
½ Cup Heavy Cream',
  'Beat egg yolks in a small saucepan; add mustard, vinegar, water, sugar and salt.  Cook over low heat, stirring constantly, until mixture thickens.  Remove from heat; stir in butter and horseradish.  Cool thoroughly.
Whip cream until thickened; fold into mustard sauce.  Makes 1 ½ cups of sauce.',
  'Neoma Shrauner'
);

commit;