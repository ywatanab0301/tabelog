class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string      :pic1
      t.string      :pic2
      t.string      :pic3
      t.string      :pic4
      t.string      :pic5
      t.references  :review, index: true, foreign_key: true
      t.timestamps
    end
  end
end
