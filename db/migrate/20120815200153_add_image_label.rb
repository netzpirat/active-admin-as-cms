class AddImageLabel < ActiveRecord::Migration
  def change
    add_column :images, :label, :string
  end
end
