class RemoveShopIdFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :shop_id, :integer
  end
end
