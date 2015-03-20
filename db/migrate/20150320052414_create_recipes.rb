class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :flav_profile
      t.string :recipe_type
      t.string :brewery_name
      t.text :description
      t.string :label
      t.references :user_id, index: true
      t.references :style_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipes, :user_ids
    add_foreign_key :recipes, :style_ids
  end
end
