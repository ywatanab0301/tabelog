class RemoveShareWithFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :share_with, :integer
  end
end
