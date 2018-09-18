class RemovePriceFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :price, :integer
  end
end
