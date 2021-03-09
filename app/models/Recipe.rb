class Recipe < ActiveRecord::Base

    has_many :favorite_recipes

    def self.list_by_cat_and_view
       recipe_cats = Recipe.all.map { |recipe| recipe.category }.uniq
       recipe_cats.each { |cat| puts cat }
       puts "Enter 'back' to return to the main menu."
       puts "Enter 'exit!' to leave"
       puts "\nEnter a category name to view that category's recipes:"
       answer = STDIN.gets.chomp
       if answer == "back"
         main_menu
       elsif answer == "exit!"
         custom_exit
       else
         system 'clear'
         Recipe.where(category: answer).each { |recipe| puts recipe.recipe_name }
         Recipe.list_and_view_helper
       end
    end

    def self.list_and_view_helper
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