class AddWantsCountToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :wants_count, :integer
  end
end
