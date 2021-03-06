class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :style

  has_many :batches

  validates :name, :presence => true
end
