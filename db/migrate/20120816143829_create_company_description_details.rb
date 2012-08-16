class CreateCompanyDescriptionDetails < ActiveRecord::Migration
  def change
    create_table :company_description_details do |t|
      t.integer :company_description_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
