class Team < ActiveRecord::Base
  belongs_to :group
  belongs_to :range_age
  has_many :scouts
  #has_many :comments

  validates :group, presence: true

end
