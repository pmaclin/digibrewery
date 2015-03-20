class Unique < ActiveRecord::Base
  belongs_to :batch

  validates :number, :presence => true
end
