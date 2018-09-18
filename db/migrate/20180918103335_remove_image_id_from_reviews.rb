class RemoveImageIdFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :image_id, :integer
  end
end
