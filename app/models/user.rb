class User < ActiveRecord::Base

    has_many :favorite_recipes
    has_many :recipes, through: :favorite_recipes

end