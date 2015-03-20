class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :brew_date
      t.string :bottle_date
      t.string :image
      t.text :notes
      t.references :user_id, index: true
      t.references :recipe_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :batches, :user_ids
    add_foreign_key :batches, :recipe_ids
  end
end
