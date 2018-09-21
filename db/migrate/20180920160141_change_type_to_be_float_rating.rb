class ChangeTypeToBeFloatRating < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :rate, :float
    change_column :reviews, :food_rate, :float
    change_column :reviews, :service_rate, :float
    change_column :reviews, :atmosphere, :float
    change_column :reviews, :cp_rate, :float
  end
end
