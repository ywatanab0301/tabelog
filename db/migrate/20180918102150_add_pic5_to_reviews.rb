class AddPic5ToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :pic5, :string
  end
end
