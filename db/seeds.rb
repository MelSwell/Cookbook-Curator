User.destroy_all
User.reset_pk_sequence
Recipe.destroy_all
Recipe.reset_pk_sequence
FavoriteRecipe.destroy_all
FavoriteRecipe.reset_pk_sequence

melissa = User.create(username: "Melissa", password: "abc123")
seth = User.create(username: "Seth", password: "abc123")
tess = User.create(username: "Tess", password: "abc123")
tim = User.create(username: "Tim", password: "abc123")
maury = User.create(username: "Maury", password: "abc123")

"Hello!"

"Well, hellooooo!"

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
ingredients: "640 grams chicken - drumsticks and thighs (3 whole chicken legs cut apart)
1/2 teaspoon salt
1/4 teaspoon black pepper
1 tablespoon butter – cultured unsalted (or olive oil)
240 grams onion sliced thin (1 large onion)
70 grams Anaheim pepper chopped (1 large pepper)
25 grams paprika (about 1/4 cup)
1 cup chicken stock
1/2 teaspoon salt
1/2 cup sour cream
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

beef_bourguignon = Recipe.create(recipe_name: "Beef Bourguignon", prep: "1. For marinade: In a large bowl, combine the wine, cognac, onions, carrots, parsley, bay leaf, garlic, peppercorns and salt. Mix well and add the cubed beef. Cover and marinate in the refrigerator for 2 days.\n
2. Preheat oven to 300 degrees F (150 degrees C).\n
3. For Bourguignon: Strain the meat from the vegetables and marinade; reserve marinade. Dry meat with paper towels. Heat 2 tablespoons of the oil in a large skillet over medium high heat. Add the meat and saute for 10 minutes, or until browned on all sides. Transfer meat to a separate medium bowl with a slotted spoon and set aside.\n
4. In the same skillet, add the bacon and saute until lightly browned. Transfer the bacon to the bowl with the meat. Drain the skillet and return it to the heat. Pour a cup of marinade into the skillet to deglaze the skillet, scraping the bottom to loosen up all the little bits. Return this liquid to the reserved marinade.\n
5. Heat the remaining oil in the skillet. Add the onion and carrot from the marinade, along with the additional onion that you've chopped, and saute for 5 minutes, or until tender. Transfer this mixture to the bowl with the meat and bacon, again using a slotted spoon, and return skillet to the heat. Add the flour to the skillet, combining with the oil and stir until well mixed and brown, about 2 minutes.\n
6. Now add the tomato paste, garlic, beef broth, reserved marinade and salt and pepper to taste. Bring to a boil and whisk to remove any flour lumps. Add this to the meat and vegetable mixture. Place entire mixture into a 9x13 baking dish.\n
7. Bake at 300 degrees F (150 degrees C) for 3 hours, stirring occasionally and adding water as needed. Season with salt and pepper to taste.\n
8. About 15 minutes before meat is done baking, melt butter in the skillet over medium high heat. Add the mushrooms and saute for 5 to 10 minutes, or until lightly browned. When meat is done, add the mushrooms to the meat mixture, stir well and let sit for about 15 minutes.",
ingredients: "3 cups Burgundy wine
2 tablespoons brandy
2 onions, thinly sliced
2 carrots, chopped
1 sprig fresh parsley
1 bay leaf
1 clove garlic, crushed
10 whole black peppercorns
1 teaspoon salt
2 pounds cubed beef chuck roast
4 tablespoons olive oil, divided
¼ pound bacon, cubed
2 onions, chopped
3 tablespoons all-purpose flour
1 tablespoon tomato paste
2 cloves garlic, crushed
1 (10.5 ounce) can beef broth
salt and pepper to taste
4 tablespoons butter
1 pound fresh mushrooms, sliced", yield: 8, category: "Dinner")

chick_potpie = Recipe.create(recipe_name: "Chicken Pot Pie", prep: "1. Preheat oven to 350 degrees F (175 degrees C).\n
2. In a bowl combine the mixed vegetables, chicken, cream of chicken soup and milk. Pour mixture into one of the pie crusts. Turn the other crust over and pop out of the tin onto the top of the filled pie. Seal the edges and poke holes in top crust.\n
3. Bake at 350 degrees F (175 degrees C) for 30 minutes or until crust is golden brown.", ingredients: "2 (9 inch) deep dish frozen pie crusts, thawed
1 (15 ounce) can mixed vegetables, drained
2 cups cooked, diced chicken breast
1 (10.75 ounce) can condensed cream of chicken soup
½ cup milk", yield: 6, category: "Dinner")

carbonara = Recipe.create(recipe_name: "Spaghetti alla Carbonara", prep: "1. Bring about 6 quarts of generously salted water (it should taste like the ocean) to a boil. Add the spaghetti and cook for 8 to 10 minutes or until al dente. When the pasta is done, reserve 1/2 cup of the water, then drain.\n
2. While the pasta is cooking, heat a large skillet over medium heat. Add the guanciale and sauté for about 3 minutes, or until the meat is crispy and golden and has rendered its fat. Turn off the heat.\n
3. In a small bowl whisk the eggs and the cheeses until well-combined.\n
4. Return the guanciale pan to medium heat, and add half of the reserved pasta water to the pan. Toss in the spaghetti and agitate the pan over the heat for a few seconds until the bubbling subsides. Much of the water will evaporate\n
5. Remove the pan from the heat and add the egg mixture and stirring quickly until the eggs thicken. The residual heat will cook the eggs but work quickly to prevent the eggs from scrambling. If the sauce seems too thick, thin it out with a little bit more of the reserved pasta water\n
6. Season liberally with freshly cracked black pepper. Taste for seasoning; depending on the kind of pork used, it may not need any salt.\n
7. Divide the pasta into bowls and serve immediately.", ingredients: "1 pound dry spaghetti
4 large eggs, as fresh as possible
8 ounces guanciale, pancetta or slab bacon, cubed
1/2 cup freshly grated Parmigiano-Reggiano
1/2 cup freshly grated Pecorino
Freshly cracked black pepper
Sea salt", yield: 5, category: "Dinner")

hbg_chicken = Recipe.create(recipe_name: "Honey Butter Garlic Chicken", prep: "1. Cut chicken thighs into small bite sized pieces.\n
2. Heat olive oil and 1 tablespoon butter in a large skillet (cast iron works best) on high heat.\n
3. Add the chicken to the skillet, sprinkle with salt and pepper. Let cook until it starts to change from pink to white and get some golden edges about 4-5 minutes.\n
4. Add the remaining butter, garlic, vinegar and honey. Stir until chicken is coated.\n
5. Simmer sauce and chicken to caramelize the outside about another 2-3 minutes.\n
6. Top with fresh chopped parsley or green onions. Serve chicken over rice or mashed potatoes.", ingredients: "1-1/2 pounds of boneless skinless chicken thighs
1 tablespoon olive oil
1 teaspoon salt
1/2 teaspoon pepper
3 tablespoons butter
4 garlic cloves minced
3-4 tablespoons Honey
1- 1/2 tablespoons apple cider vinegar
Fresh chopped parsley or green onions for garnish", yield: 4, category: "Dinner")

sesame_noodles = Recipe.create(recipe_name: "Sesame Garlic Noodles", prep: "1. Cook pasta according to package directions. Rinse and drain. In a small bowl whisk soy sauce, rice vinegar, sesame oil, ginger, brown sugar and garlic.\n
2. Pour over hot noodles and toss to coat. Garnish with sesame seeds.", ingredients: "16 ounces spaghetti noodles
1/4 cup soy sauce
1/4 cup rice vinegar
2 Tablespoons sesame oil
1/2 teaspoon ground ginger
1 Tablespoon brown sugar
3 garlic cloves minced
sesame seeds for garnish", yield: 4, category: "Lunch")

yogurt_chick_salad = Recipe.create(recipe_name: "Greek Yogurt Chicken Salad", prep: "1. In a large bowl, combine chicken, red onion, apple, grapes, dried cranberries, sliced almonds, Greek yogurt, lemon juice, garlic powder, salt and pepper, to taste.\n
2. Serve on toasted bread with lettuc", ingredients: "2 cups leftover rotisserie chicken
1/2 cup diced red onion
1/2 cup diced apple
1/2 cup grapes, halved
1/4 cup dried cranberries
1/4 cup slivered almonds
1/2 cup plain Greek yogurt
1 tablespoon freshly squeezed lemon juice, or more, to taste
1/2 teaspoon garlic powder
Kosher salt and freshly ground black pepper
8 slices bread
4 leaves Boston bibb lettuce", yield: 4, category: "Lunch")

sweet_potato_tostadas = Recipe.create(recipe_name: "Sweet Potato and Zucchini Tostadas", prep: "1. Heat oven to 425 degrees F.\n
2. Heat a large pan over medium heat and add olive oil and grated sweet potato.  Cook for about 2 minutes and then add grated zucchini, salt, pepper and spices. Stir together and cook until vegetables are tender, about 5 minutes.\n
3. Lay tostada shells on a large baking sheet and spread each with about 1/4 cup refried beans, 1/6 of the veggie mixture and top with 2 tablespoons shredded cheese.\n
4. Bake tostadas until heated through and cheese is melted, about 5 minutes.\n
5. Add your favorite toppings and enjoy!", ingredients: "1 teaspoon olive oil
1 1/2 cups grated sweet potato
1 1/2 cups grated zucchini
1 teaspoon ground cumin
1 teaspoon paprika
1 teaspoon garlic powder
1/2 teaspoon salt, or to taste
1/4 teaspoon black pepper
6 tostada shells
1 1/2 cups refried beans, I like to use black
3/4 cup grated cheese, vegan cheese if necessary
Your favorite toppings: avocado, onion, lettuce, tomato, cilantro, salsa, etc…", yield: 6, category: "Lunch")

egg_roll_bowl = Recipe.create(recipe_name: "Egg Roll Bowls", prep: "1. In a large skillet over medium heat, heat vegetable oil. Add garlic and ginger and cook until fragrant, 1 minute.\n
2. Add pork and cook, stirring occasionally, until meat is golden in parts and cooked through, 8 to 10 minutes, breaking meat into small pieces with spoon or spatula.\n
3. Push pork to the side and add sesame oil. Add onion, carrot, and cabbage. Stir to combine with meat and add soy sauce and Sriracha. Cook until cabbage is tender, 5 to 8 minutes. Season to taste with salt.\n
4. Transfer mixture to a serving dish and garnish with green onions and sesame seeds. Serve.", ingredients: "1 tbsp. vegetable oil
1 clove garlic, minced
1 tbsp. minced fresh ginger
1 lb. ground pork
1 tbsp. sesame oil
1/2 onion, thinly sliced
1 cup shredded carrot
1/4 green cabbage, thinly sliced
1/4 cup soy sauce
1 tbsp. Sriracha
Kosher salt
1 green onion, thinly sliced
1 tbsp. toasted sesame seeds", yield: 4, category: "Lunch")

turkey_melt = Recipe.create(recipe_name: "Sheet-pan Turkey Melts", prep: "1. Turn on oven broiler and either grease a baking sheet  or prepare it with parchment paper.\n
2. Spread a dollop of dijon mustard and cream cheese on sandwich slices.\n
3. Top one side with cheeses and the other side with turkey slices.\n
4. Broil for 5-7 minutes, until bread starts to turn golden and cheeses are bubbling.\n
5. Remove from heat and top cheese side with desired amount of lettuce. Combine the sides together to make a sandwich, slice in half, and serve immediately.",
ingredients: "Hearty, artisan bread like sourdough or piccolo como sliced ½ inch thick
Turkey breast, thinly sliced (about 3 slices per sandwich)
Swiss cheese, thinly sliced (1 square slice per sandwich)
White cheddar cheese, thinly sliced (1 square slice per sandwich)
Dijon Mustard
Chive and Onion cream cheese spread
Butter lettuce, roughly chopped", yield: 1, category: "Lunch")


fr1 = FavoriteRecipe.create(user_id: melissa.id, recipe_id: huevos.id, category: huevos.category)
fr2 = FavoriteRecipe.create(user_id: melissa.id, recipe_id: kdp.id, category: kdp.category)
fr3 = FavoriteRecipe.create(user_id: seth.id, recipe_id: carbonara.id, category: carbonara.category, note: "This is not a note")
fr4 = FavoriteRecipe.create(user_id: seth.id, recipe_id: beef_bourguignon.id, category: beef_bourguignon.category)
fr5 = FavoriteRecipe.create(user_id: tess.id, recipe_id: hbg_chicken.id, category: hbg_chicken.category)
fr6 = FavoriteRecipe.create(user_id: tess.id, recipe_id: eggs_benny.id, category: eggs_benny.category)
fr7 = FavoriteRecipe.create(user_id: tim.id, recipe_id: pancakes.id, category: pancakes.category)
fr8 = FavoriteRecipe.create(user_id: tim.id, recipe_id: turkey_melt.id, category: turkey_melt.category)
fr9 = FavoriteRecipe.create(user_id: maury.id, recipe_id: egg_roll_bowl.id, category: egg_roll_bowl.category)
fr10 = FavoriteRecipe.create(user_id: maury.id, recipe_id: chick_potpie.id, category: chick_potpie.category)

puts "Seeded! Way to go!!"
