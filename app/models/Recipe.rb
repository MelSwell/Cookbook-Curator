class Recipe < ActiveRecord::Base

  has_many :favorite_recipes

  def self.list_all_categories
    Recipe.all.map { |recipe| recipe.category }.uniq
      .each { |cat| puts cat }
  end

  def self.list_recipes_by_cat(category)
    Recipe.where(category: category).each { |recipe| puts recipe.recipe_name }
  end

  def self.find_by_name(name)
    Recipe.all.find_by(recipe_name: name)
  end

  def display_nicely
    puts "#{self.recipe_name}:"
    puts "\n#{self.ingredients}"
    puts "\n#{self.prep}"
    puts "\nYield: #{self.yield} servings"
  end

end