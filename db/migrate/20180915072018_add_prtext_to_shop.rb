class AddPrtextToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :prtext, :text
  end
end
