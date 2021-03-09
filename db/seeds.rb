User.destroy_all
User.reset_pk_sequence
Recipe.destroy_all
Recipe.reset_pk_sequence

melissa = User.create(username: "Melissa", password: "SomePassword")


pbj = Recipe.create(recipe_name: "PB & J", prep: "1. Spread jam on one slice of bread. 
2. Spread PB on second slice of bread. 
3. Put both pieces together with untouched sides facing outward.", yield: 1, 
ingredients: "1. 2 slices of bread 2. Jam of your choosing 3. Peanut Butter (preferably chunky, but up to you", category: "Lunch")

chick_paprikash = Recipe.create(recipe_name: "Chicken Paprikash", prep: "1. Use paper towels to dry the chicken thoroughly. Reducing the moisture content on the surface of the chicken is essential to get it to brown.\n 
2. Sprinkle the chicken evenly with the salt and black pepper.\n 
3. Heat a heavy bottomed pot over medium heat until hot. Add the olive oil and swirl to coat the pan.\n
4. When the pot is hot, add the chicken in a single layer, being careful not to overcrowd the pan. If they don't all fit in your pan, divide the chicken into two batches. Leave the chicken undisturbed until golden brown (about 5-7 minutes).\n
5. Flip the chicken over and brown the other side. Repeat with the rest of the chicken if necessary.\n 
6. Transfer the chicken to a bowl and then add the onions and peppers to the pot. Stir to distribute evenly and then cover with a lid to let the vegetables steam for about 10 minutes.\n
7. Remove the lid and saute the onions until they are golden brown.\n
8. Add the paprika and fry, continually stirring for about 10 seconds. Paprika burns easily and will become bitter, so be careful not to burn it.\n
9. Add the chicken stock and then return the chicken to the pot along with any accumulated juices. Cover with a lid and turn down the heat to maintain a gentle simmer. Cook the chicken until it is tender (about 45 minutes).\n
10. While you're waiting for the chicken to cook, mix the sour cream and flour in a bowl until it's free of lumps.\n
11. When the chicken is done, temper the sour cream by transferring some cooking liquid from the chicken a spoonful at a time to the cream mixture and stirring after each addition. You want to slowly raise the temperature of the sour cream until it is very warm.\n
12. Once the sour cream is tempered, you can pour it all back into the pot and stir to combine. Do not let it boil once you've added the sour cream. Taste the sauce and add some more salt if needed. The paprika chicken is done when the sauce has thickened.", 
ingredients: "640 grams chicken - drumsticks and thighs (3 whole chicken legs cut apart),
1/2 teaspoon salt,
1/4 teaspoon black pepper,
1 tablespoon butter – cultured unsalted (or olive oil),
240 grams onion sliced thin (1 large onion),
70 grams Anaheim pepper chopped (1 large pepper),
25 grams paprika (about 1/4 cup),
1 cup chicken stock,
1/2 teaspoon salt,
1/2 cup sour cream,
1 tablespoon flour – all-purpose",
yield: 4, category: "Dinner")


pancakes = Recipe.create(recipe_name: "Old-Fashioned Pancakes", prep: "1. Sift together flour, baking powder, salt and sugar in a large bowl.\n
2. Whisk in melted butter, egg, and milk until combined. Let batter rest for 5 minutes.\n
3. Preheat a large skillet over medium-high heat. Spray with cooking spray.\n
4. Pour batter into the hot skillet, about 1/4 cup of batter for each pancake. Cook for 2 to 3 minutes, until bubbles appear on the sides and center of each pancake.\n
5. Flip and cook until golden, about 1 to 2 minutes.", ingredients: "1 1/2 cups all-purpose flour
3 1/2 teaspoons baking powder
1/2 to 1 teaspoon salt, to taste
1 tablespoon white sugar
3 tablespoons butter, melted
1 egg
1 1/4 cups milk
Cooking spray", yield: 12, category: "Breakfast")

eggs_benny = Recipe.create(recipe_name: "Eggs Benedict with Crispy Prosciutto & Arugula Salad", prep: "1. In a medium sauté pan, heat 1 teaspoon of the olive oil over medium heat. Lay the prosciutto flat in the pan and cook until crispy, 3 to 4 minutes. Flip, and cook for 2 to 3 minutes more. Note: the prosciutto will smoke, so regulate the heat to be sure it does not burn.\n
2. Transfer the cooked prosciutto to a paper towel-lined plate and set aside.\n
3. In a medium mixing bowl, gently toss together the tomatoes, arugula, chives, vinegar, remaining olive oil, salt, and pepper.\n
4. In a small saucepan, make the hollandaise sauce. Cover it to keep it warm, and set it aside.\n
5. In a medium pot, poach the eggs, two at a time, and set them aside.\n
6. Toast 4 slices of sourdough bread.\n
7. Top each slice of toast with 2 pieces prosciutto, ⅓ cup arugula salad mixture, 1 poached egg, and 2 tablespoons hollandaise sauce. Garnish with additional fresh chives and a crack of black pepper, and serve hot.", ingredients: "2 tsp extra-virgin olive oil, divided
8 slices prosciutto
½ cup halved grape tomatoes
2 cups lightly packed arugula
1 Tbsp sliced Gelson’s organic fresh chives, plus more for garnish
½ tsp red wine vinegar
Pinch salt
1 crack black pepper, plus more for garnish
½ cup hollandaise sauce
4 large poached eggs
4 slices sourdough bread", yield: 4, category: "Breakfast")

huevos = Recipe.create(recipe_name: "Huevos Rancheros", prep: "1. Warm the ranchero sauce on the stovetop. Pour the beans in a small sauce pot. Warm over medium heat until simmering, then turn off the heat.\n
2. Place the chorizo in a large nonstick skillet and set over medium-high heat. Break the chorizo apart with a wooden spoon, and brown for 5-10 minutes, until the chorizo starts to turn crispy. Pour the chorizo onto a plate.\n
3. Wipe the skillet out with a paper towel, then add 2 tablespoons oil and set back over medium-high heat. One at a time, add the tortillas. Let them puff up for 3-5 seconds, flip and repeat. Then remove the tortillas, and set on paper towels to drain. Repeat until all the tortillas are puffy and golden.\n
4. Using the same skillet, cook the eggs to order. Traditional Huevos Rancheros are made with sunny side up eggs, but I personally like scrambled eggs in this dish.\n
5. To Serve: Place two tortillas each, on five plates. Top with warm black beans, eggs cooked to order, chorizo, ample ranchero sauce, sliced avocado, and queso fresco.", ingredients: "Ranchero Sauce
2 tablespoons vegetable oil
10 Flour Tortillas
15 ounce Mexican chorizo
15 ounces black beans
2 ripe avocados sliced
1/2 cup crumbled queso fresco
10 large eggs
Possible Add-Ons: cilantro, salsa verde, pico de gallo, sour cream", yield: 5, category: "Breakfast")

ftcasserole = Recipe.create(recipe_name: "French Toast Casserole", prep: "1. Preheat oven to 425 degrees. Butter a 13x9 inch baking pan and set aside.\n
2. In a small sauce pan, melt butter over medium heat. Once butter has melted, stir in brown sugar until dissolved and mixture is smooth. Pour mixture into the bottom of a 9x13 pan and spread evenly.\n
3. Add bread cubes to the pan, spreading over the top of the brown sugar/butter mixture.\n
4. In a medium sized bowl, whisk together the eggs, milk, vanilla, and 1 tsp of cinnamon. Pour egg mixture over the top of bread cubes, insuring that all pieces of bread are saturated. Sprinkle with remaining 1 teaspoon of cinnamon and 1 tablespoon of brown sugar.\n
5. Bake in preheated oven for 25-30 minutes until top is golden brown. Remove from oven and sprinkle with powdered sugar if desired. Enjoy!", ingredients: "½ a loaf of French bread, (about 8 oz) cut into cubes
½ cup butter
1 cup packed brown sugar
6 eggs
2 cups milk
2 teaspoons vanilla extract
2 teaspoons cinnamon, divided
1 Tablespoon brown sugar, for topping
powdered sugar for topping, optional", yield: 8, category: "Breakfast")

salmon_bowl = Recipe.create(recipe_name: "Smoked Salmon Breakfast Bowl", prep: "1. Bring rice, 1 1/2 cups water, and 1/4 teaspoon of salt to a boil in a saucepan. Cover and reduce heat to a simmer. Cook for 45 minutes. Turn off heat and let rest, with the lid still on, for another 10 minutes. Fluff with a fork before serving.\n
2. Meanwhile preheat oven to 425 degrees. Line a small baking sheet with foil. Toss potatoes with 2 teaspoons olive oil, salt and pepper. Spread across baking sheet in a single layer. Roast in the oven for 30 minutes, tossing them half way through to ensure even cooking.\n 
3. Heat a sauté pan over medium-high heat. Add one tablespoon of butter. Swirl the pan to ensure the melted butter coats the bottom. Add sliced mushrooms in a single layer, trying not to crowd them. Season with 1/4 teaspoon of salt and cook for 3 minutes, until browned and then given the a quick stir and cook for another 2 minutes. Transfer mushrooms to a bowl. Return pan to heat and add 1 teaspoon of olive oil. Add spinach leaves, lower heat to a simmer and cook until leaves have wilted. Season with salt and black pepper, to taste.\n 
4. Add 4 cups of water to medium-sized, deep-sided saucepan. Bring water to a rolling boil and gently lower the eggs into the pot. Lower heat to a simmer and cook eggs for 6 minutes. Remove the eggs and rinse under cold water for a minute to shock them. Carefully crack and peel the eggs. Set aside.\n
5. Whisk together mayonnaise, lemon juice and smoked paprika until throughly combined. Season with salt, to taste.\n
6. To assemble the dish, spoon 1 tablespoon of the sauce on the bottom of two bowls. Distribute 1/4 cup brown rice into each. Top each with mushrooms, spinach, roasted potatoes, and 4 oz. smoked salmon. Place the eggs in a bowl and, using a sharp knife, cut them in half, lengthwise. Garnish with chopped parsley, salt, and freshly ground black pepper.", ingredients: "1 cup brown rice
5 baby red potatoes, quartered
8 oz. smoked salmon
1/2 cup sliced mushrooms
2 cups fresh spinach leaves, washed and dried
2 eggs
2 tablespoons mayonnaise
1 teaspoon lemon juice
1/8 teaspoon smoked paprika
1 tablespoon chopped parsley
Butter
Salt
Pepper", yield: 2, category: "Breakfast")

cookie_bars = Recipe.create(recipe_name: "Salted Caramel Cookie Bars", prep: "1. Preheat oven to 350°F. Line an 8 by 8-inch pan with aluminum foil and spray with nonstick cooking spray.\n
2. Combine butter with sugar and stir until smooth. If still very hot, let cool slightly. Stir in egg, egg yolk, and vanilla until smooth. Add in salt and flour and stir until combined. Gently stir in chocolate chips.\n
3. In a microwave-safe bowl combine caramels and heavy cream. Microwave in 30 second bursts, stirring between bursts, until mixture is melted and smooth. Be careful not to overheat.\n
4. Press half cookie dough evenly into prepared pan. Pour the caramel evenly over dough. Sprinkle all over with sea salt. Scoop remaining dough into spoonfuls over caramel, gently spreading until caramel is mostly covered. Sprinkle with additional sea salt.\n
5. Bake for 30 minutes, or until golden brown. Allow to cool to room temperature before chilling for 30 minutes to make bars easier to cut. Slice into large bars or squares and serve. Store in an airtight container at room temperature for up to 3 days.", ingredients: "1 1/2 sticks (6 ounces) unsalted butter, melted
1 cup Imperial Sugar Dark Brown Sugar
1 large egg plus 1 egg yolk
1 teaspoon vanilla extract
1/4 teaspoon fine salt
1 1/2 cups (6.75 ounces) all-purpose flour
1 1/2 cups (9 ounces) semisweet chocolate chips
11 ounces caramel candy squares, unwrapped
3 tablespoons heavy cream
Flaked sea salt", yield: 9, category: "Dessert")

shortbread = Recipe.create(recipe_name: "Raspberry Almond Shortbread Cookies", prep: "1. In a medium bowl beat butter medium speed for about 30 seconds. Add the the 2/3 cup granulated sugar and 1/2 teaspoon almond extract. Beat until well combined. Beat in as much flour as you can with electric mixer and then using a wooden spoon stir in any remaining flour. Cover and chill for 1 hour or until dough is easy to handle.\n
2. Preheat oven to 350 degrees. Shape dough into 1-inch balls. Place balls 2 inches apart on ungreased cookie sheets. Using your thumb, press an indentation into the center of each ball. Spoon about 1/2 teaspoon of the jam into each indentation and then sprinkle with sugar. Bake about 10 minutes or until edges are light brown. Cool on cookie sheets for 1 minute. Transfer cookies to wire racks to finish cooling.\n
3. For icing, in a medium bowl combine powdered sugar, 1 teaspoon water and 1 1/2 teaspoons almond extract. Add enough of the remaining water to make a drizzling consistency. Drizzle cookies with icing.", ingredients: "1 cup butter, softened
2/3 cup granulated sugar
1/2 teaspoon almond extract
2 cups all-purpose flour
1/2 cup seedless red raspberry jam
sugar for sprinkling
1 cup powdered sugar
3 to 4 teaspoons water
1 1/2 teaspoons almond extract", yield: 36, category: "Dessert")

kdp = Recipe.create(recipe_name: "Kentucky Derby Day Pie", prep: "1. Preheat oven to 325.\n
2. Mix sugar and flour well.\n
3. Add eggs, butter and vanilla. Mix well.\n
4. Add pecans and chocolate chips. Mix well.\n
5. Pour into pie shell and bake 45-60 minutes or until golden brown and a toothpick comes out clean in the middle. If your crust starts to get too brown before the middle is cooked, you can cover the pie with foil and continue baking.", ingredients: "1 cup sugar
1/2 cup flour
2 eggs slightly beaten
1 stick butter melted
1 cup pecans chopped small
1 cup chocolate chips
1 tsp vanilla
1 unbaked 9 inch unbaked pie shell", yield: 8, category: "Dessert")

mousse = Recipe.create(recipe_name: "Chocolate Mousse", prep: "1. In medium mixing bowl using an electric hand mixer whip together egg yolks and granulated sugar on high speed until pale and fluffy, about 2 minutes.\n
2. Warm 3/4 cup of the heavy cream and salt in a 2-quart saucepan on the stovetop over low heat (don't let it boil).\n
3. While whisking egg mixture slowly pour in warm cream mixture to temper egg yolks. Then pour combined egg yolk and cream mixture back into saucepan.\n
4. Cook over low heat, whisking constantly, until mixture thickens just slightly and reaches 160 degrees on an instant read thermometer (this usually takes about 3 - 5 minutes). If you notice any small lumps strain through a sieve and return to saucepan.\n
5. Off heat add in chocolate and vanilla. Stir well until chocolate is melted.\n
6. Pour mixture into a clean medium bowl, cover and chill, stirring about every 10 - 15 minutes until it reaches 70 degrees (or no longer warm), about 30 - 40 minutes total.\n
7. Whip remaining heavy cream until very stiff peaks form. Fold whipped cream into chocolate mixture until combined.\n
8. Pipe or spoon into dessert cups. Chill 2 hours. Top with sweetened whipped cream if desired and garnish with shaved or grated chocolate.", ingredients: "4 large egg yolks
1/4 cup (50g) granulated sugar
2 cups (475ml) heavy cream, divided, plus more for topping if desired*
1 pinch sea salt (optional)
2 tsp (10ml) vanilla extract
7 oz. bittersweet chocolate, chopped small", yield: 6, category: "Dessert")

brownies = Recipe.create(recipe_name: "Brownies", prep: "1. Preheat oven to 350 degrees F. Line a metal 9x9 pan with parchment paper.\n
2. Pour melted butter into a large mixing bowl. Whisk in sugar by hand until smooth, 30 seconds.\n
3. Add in eggs and vanilla extract. Whisk 1 minute.\n
4. Whisk in melted chocolate until combined and smooth.\n
5. Use a rubber spatula to stir in flour, cocoa powder, and salt until just combined. Stir in whole chocolate chips.\n
6. Pour into prepared pan and smooth out.\n
7. Bake in the preheated oven for 30 minutes. Let cool in pan 30 minutes before slicing.", ingredients: "10 tablespoons salted butter melted
1 cup granulated sugar
2 large eggs
2 teaspoons vanilla extract
1/2 cup melted milk chocolate chips
3/4 cup all-purpose flour
1/4 cup unsweetened cocoa powder
1/2 teaspoon salt
1 cup milk chocolate chips", yield: 9, category: "Dessert")


fr1 = FavoriteRecipe.create(user_id: melissa.id, recipe_id: pbj.id, category: pbj.category)

puts "Seeded! Way to go!!"
