class AddManeuverIndex < ActiveRecord::Migration
  def up
    add_index :maneuvers, :name, :unique => true
  end

  def down
    remove_index :maneuvers, :name
  end
end
