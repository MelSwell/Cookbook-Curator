class User < ActiveRecord::Base

    has_many :favorite_recipes
    has_many :recipes, through: :favorite_recipes
    has_many :aspiring_recipes
    has_many :all_aspirings, through: :aspiring_recipes, source: :recipe

    def create_favorite(chosen_recipe)
        FavoriteRecipe.create(user_id: self.id, recipe_id: chosen_recipe.id, category: chosen_recipe.category)
        self.reload.favorite_recipes
    end

    def list_user_favorite_cats
        self.recipes.map { |recipe| recipe.category }.uniq
            .each { |cat| puts cat }
    end

    def list_recipe_names_by_cat(category)
        self.recipes.where(category: category).each { |recipe| puts recipe.recipe_name }
    end

    def delete_favorite_recipe(chosen_recipe)
        self.favorite_recipes.find_by(recipe_id: chosen_recipe.id).destroy
        self.reload.favorite_recipes
    end

    def find_recipe_by_name(recipe_name)
        self.recipes.find_by(recipe_name: recipe_name)
    end

    def recipe_note(chosen_recipe)
        self.favorite_recipes.find_by(recipe_id: chosen_recipe.id).note
    end

    def update_note(chosen_recipe, response)
        favorite_recipe = self.favorite_recipes.find_by(recipe_id: chosen_recipe.id)
        favorite_recipe.update(note: response)
        self.reload.favorite_recipes
    end

    def delete_note(chosen_recipe)
        favorite_recipe = self.favorite_recipes.find_by(recipe_id: chosen_recipe.id)
        favorite_recipe.update(note: nil)
        self.reload.favorite_recipes
    end

    def create_aspiring(chosen_recipe)
        AspiringRecipe.create(user_id: self.id, recipe_id: chosen_recipe.id, category: chosen_recipe.category)
        self.reload.aspiring_recipes
    end

    def list_aspiring_cats
        self.all_aspirings.map { |recipe| recipe.category }.uniq
            .each { |cat| puts cat }
    end

    def list_aspiring_names_by_cat(category)
        self.all_aspirings.where(category: category).each { |recipe| puts recipe.recipe_name }
    end

    def find_aspiring_recipe_by_name(recipe_name)
        self.all_aspirings.find_by(recipe_name: recipe_name)
    end

    def delete_aspiring_recipe(chosen_recipe)
        self.aspiring_recipes.find_by(recipe_id: chosen_recipe.id).destroy
        self.reload.aspiring_recipes
    end

end