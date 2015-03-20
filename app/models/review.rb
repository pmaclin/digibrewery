class Review < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :batch_id
end
