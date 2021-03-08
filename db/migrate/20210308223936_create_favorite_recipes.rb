class CreateFavoriteRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_recipes do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.string :category
      t.text :note
    end
  end
end
