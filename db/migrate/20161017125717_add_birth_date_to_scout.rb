class AddBirthDateToScout < ActiveRecord::Migration
  def change
    add_column :scouts, :birth_date, :datetime
    remove_column :scouts, :age
  end
end
