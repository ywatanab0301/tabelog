class AddDrinkRateToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :drink_rate, :float, null: false
  end
end
