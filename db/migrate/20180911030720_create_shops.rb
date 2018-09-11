class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string      :shop_name, null: false, index: true
      t.string      :shop_name_f, null: false
      t.integer     :phone_number, null: false
      t.string      :city_address, null: false
      t.string      :building
      t.text        :map
      t.text        :hours
      t.string      :closed_day
      t.integer     :reservation
      t.integer     :payment
      t.integer     :private_room
      t.integer     :capacity
      t.integer     :chartered
      t.integer     :parking
      t.integer     :smorking
      t.integer     :dish
      t.integer     :drink
      t.integer     :nomiho
      t.integer     :course
      t.string      :service_charge
      t.integer     :location
      t.integer     :facility_atmosphere
      t.integer     :kids
      t.string     :homepage
      t.string      :official_account1
      t.string      :official_account2
      t.string      :official_account3
      t.integer     :open_date
      t.string      :others
      t.string      :dress_code
      t.integer     :confirmation_method, null: false
      t.text        :comment
      t.timestamps
    end
  end
end
