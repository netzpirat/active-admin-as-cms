class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street
      t.string :zip
      t.string :city
      t.string :phone
      t.string :email
      t.string :web

      t.timestamps
    end
  end
end
