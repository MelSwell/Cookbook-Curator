User.destroy_all
User.reset_pk_sequence
Recipe.destroy_all
Recipe.reset_pk_sequence

melissa = User.create(username: "Melissa", password: "SomePassword")


recipe1 = Recipe.create(recipe_name: "PB & J", prep: "1. Spread jam on one slice of bread. /2. Spread PB on second slice of bread. 3. Put both pieces together with untouched sides facing outward.", yield: 1, 
ingredients: "1. 2 slices of bread 2. Jam of your choosing 3. Peanut Butter (preferably chunky, but up to you", category: "Lunch")


fr1 = FavoriteRecipe.create(user_id: melissa.id, recipe_id: recipe1.id, category: recipe1.category)

puts "Seeded! Way to go!!"
