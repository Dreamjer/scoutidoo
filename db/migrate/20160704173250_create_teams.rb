class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string  :name
      t.integer :range_age_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
