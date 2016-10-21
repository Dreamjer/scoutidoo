class Group < ActiveRecord::Base
  has_many :teams
  has_one :scout
  accepts_nested_attributes_for :scout

  def scout_attributes=(attribs)
    self.scout = Scout.find(attribs[:id])
  end

end
