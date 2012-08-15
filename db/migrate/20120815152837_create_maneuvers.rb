class CreateManeuvers < ActiveRecord::Migration
  def change
    create_table :maneuvers do |t|
      t.string :name
      t.string :tagline
      t.string :year
      t.string :customer
      t.string :link
      t.string :services
      t.text :description

      t.timestamps
    end
  end
end
