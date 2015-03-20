class Batch < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :recipe_id
end
