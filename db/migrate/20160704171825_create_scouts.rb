class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string  :code
      t.string  :email
      t.string  :firstname
      t.string  :lastname
      t.string  :address
      t.string  :phonehome
      t.string  :phonemobile
      t.string  :school
      t.text    :notes
      t.integer :age
      t.integer :level_id
      t.integer :team_id
      t.integer :group_id
      
      t.timestamps null: false
    end
  end
end
