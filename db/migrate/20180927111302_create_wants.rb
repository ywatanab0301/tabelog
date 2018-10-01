class CreateWants < ActiveRecord::Migration[5.0]
  def change
    create_table :wants do |t|
      t.references       :user, index: true
      t.references       :shop, index: true
      t.timestamps
    end
  end
end
