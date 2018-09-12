class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references     :user, null: false, foreign_key: true
      t.integer        :lunch_dinner, null: false
      t.integer          :price, null: false
      t.integer          :rate, null: false
      t.integer          :food_rate, null: false
      t.integer          :service_rate, null: false
      t.integer          :drink_rate
      t.integer          :atmosphere, null: false
      t.integer          :cp_rate, null: false
      t.string           :title, null: false
      t.text             :text, null: false
      t.references       :image
      t.datetime         :visit_day, null: false
      t.integer          :share_with, null: false
      t.timestamps
    end
  end
end
