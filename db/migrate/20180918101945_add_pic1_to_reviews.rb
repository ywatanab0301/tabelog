class AddPic1ToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :pic1, :string
  end
end
