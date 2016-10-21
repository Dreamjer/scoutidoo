class AddManagerToScout < ActiveRecord::Migration
  def change
    add_column :scouts, :manager, :boolean
  end
end
