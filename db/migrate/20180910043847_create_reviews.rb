class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references       :user, null: false, foreign_key: true
      t.integer          :lunch_dinner, null: false
      t.float          :rate, null: false
      t.float          :food_rate, null: false
      t.float          :service_rate, null: false
      t.float          :drink_rate, null: false
      t.float          :atmosphere, null: false
      t.float          :cp_rate, null: false
      t.string           :title, null: false
      t.text             :text, null: false
      t.string           :pic1
      t.string           :pic2
      t.string           :pic3
      t.string           :pic4
      t.string           :pic5
      t.datetime         :visit_day, null: false
      t.timestamps
    end
  end
end
