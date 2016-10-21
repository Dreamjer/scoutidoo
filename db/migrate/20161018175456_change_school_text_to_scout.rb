class ChangeSchoolTextToScout < ActiveRecord::Migration
  def change
    change_column :scouts, :school, :text
  end
end
