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


fr1 = FavoriteRecipe.create(user_id: melissa.id, recipe_id: pbj.id, category: pbj.category)

puts "Seeded! Way to go!!"
