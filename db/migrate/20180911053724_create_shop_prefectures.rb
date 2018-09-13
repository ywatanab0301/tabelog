class CreateShopPrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_prefectures do |t|
      t.references :shop, index: true, foreign_key: true
      t.references :prefecture, index: true, foreign_key: true
      t.timestamps
    end
  end
end
