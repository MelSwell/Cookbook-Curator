class Recipe < ActiveRecord::Base

    has_many :favorite_recipes

    def self.all_categories
        Recipe.all.map { |recipe| recipe.category }.uniq
    end
    
end