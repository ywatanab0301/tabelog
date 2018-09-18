class AddPic3ToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :pic3, :string
  end
end
