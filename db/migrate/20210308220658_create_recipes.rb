class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.text :prep
      t.integer :yield
      t.text :ingredients
      t.string :category
    end
  end
end
