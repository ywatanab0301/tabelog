class AddShopIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :shop_id, :integer, null:false, foreign_key: true
  end
end
