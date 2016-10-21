class Scout < ActiveRecord::Base
  belongs_to :team
  # belongs_to :group

  validates :firstname, :lastname, :birth_date, presence: true
  validates :email, uniqueness: true, presence: true
  validates :code , uniqueness: true, presence: true

  def full_name
    firstname+" "+lastname
  end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
