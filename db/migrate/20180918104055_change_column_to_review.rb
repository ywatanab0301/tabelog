class ChangeColumnToReview < ActiveRecord::Migration[5.0]
  def change
    def up
    change_column :reviews, :shop_id, :integer
    end

    def down
    change_column :reviews, :shop_id, :integer, null:false, foreign_key: true
    end
  end
end
