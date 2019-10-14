class Country < ApplicationRecord
  validates :location, length: { maximum:  100}
  has_many :attractions
  has_one :capital
end
