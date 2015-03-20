class Batch < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  has_many :reviews
  has_many :uniques

  validates :brew_date, :presence => true
  validates :bottle_date, :presence => true


end
