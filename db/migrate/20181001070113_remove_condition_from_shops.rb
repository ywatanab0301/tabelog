class RemoveConditionFromShops < ActiveRecord::Migration[5.0]
  def change
    change_column :shops, :shop_name_f, :string, null: true
  end
end
