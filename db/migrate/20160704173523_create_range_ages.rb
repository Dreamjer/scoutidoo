class CreateRangeAges < ActiveRecord::Migration
  def change
    create_table :range_ages do |t|
      t.string :name
      t.string :rangeage

      t.timestamps null: false
    end
  end
end
