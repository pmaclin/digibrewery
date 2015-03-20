class Recipe < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :style_id
end
