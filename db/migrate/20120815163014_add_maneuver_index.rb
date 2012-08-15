class AddManeuverIndex < ActiveRecord::Migration
  def change
    add_index :maneuvers, :name, :unique => true
  end
end
