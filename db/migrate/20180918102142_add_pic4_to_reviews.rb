class AddPic4ToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :pic4, :string
  end
end
