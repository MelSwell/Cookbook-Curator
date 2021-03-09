class Recipe < ActiveRecord::Base

    has_many :favorite_recipes

    def self.browse_all_helper
       recipe_cats = Recipe.all.map { |recipe| recipe.category }.uniq
       recipe_cats.each { |cat| puts cat }
       puts "\nEnter a category name:"
       answer = STDIN.gets.chomp
       system 'clear'
       Recipe.where(category: answer).each { |recipe| puts recipe.recipe_name }
       puts "\nEnter a recipe name:"
       answer = STDIN.gets.chomp
       chosen_recipe = Recipe.all.find_by(recipe_name: answer)
       system 'clear'
       puts "#{chosen_recipe.recipe_name}:"
       puts "\n#{chosen_recipe.ingredients}"
       puts "\n#{chosen_recipe.prep}"
       puts "\nYield : #{chosen_recipe.yield}"
    end

end