class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :mobile
      t.text :description

      t.timestamps
    end
  end
end
