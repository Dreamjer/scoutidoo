class RangeAge < ActiveRecord::Base
  has_many :team
  validates :rangeage, uniqueness: true
end
