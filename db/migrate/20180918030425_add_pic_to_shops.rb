class AddPicToShops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :pic1, :string
    add_column :shops, :pic2, :string
    add_column :shops, :pic3, :string
    add_column :shops, :pic4, :string
    add_column :shops, :pic5, :string
  end
end
