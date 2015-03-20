class Batch < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  has_many :reviews
  has_many :uniques


end
