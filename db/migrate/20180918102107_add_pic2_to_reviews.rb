class AddPic2ToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :pic2, :string
  end
end
