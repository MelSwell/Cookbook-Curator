class User < ActiveRecord::Base

    has_many :favorite_recipes
    has_many :recipes, through: :favorite_recipes

    def create_favorite(chosen_recipe)
        FavoriteRecipe.create(user_id: self.id, recipe_id: chosen_recipe.id, category: chosen_recipe.category)
    end

end