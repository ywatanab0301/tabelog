class ChangeLimitToBeInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :shops, :phone_number, :integer, limit: 5
  end
end
