class CreateShopimgs < ActiveRecord::Migration[5.0]
  def change
    create_table :shopimgs do |t|
      t.string     :img1
      t.string     :img2
      t.string     :img3
      t.string     :img4
      t.string     :img5
      t.timestamps
    end
  end
end
