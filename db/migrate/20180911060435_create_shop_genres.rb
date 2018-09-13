class CreateShopGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_genres do |t|
      t.references :shop, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true
      t.timestamps
    end
  end
end
