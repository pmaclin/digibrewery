class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.references :user_id, index: true
      t.references :batch_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :user_ids
    add_foreign_key :reviews, :batch_ids
  end
end
