class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :batch

  validates :rating, :presence => true
end
