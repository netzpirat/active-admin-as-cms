class CreateCompanyDescriptions < ActiveRecord::Migration
  def change
    create_table :company_descriptions do |t|
      t.integer :company_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
