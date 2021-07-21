=begin
~(
  This migrartion was created using: 
  `bin/rails g model BikeShop name:string address:string phone_number:integer bike:references`
)~
=end

class CreateBikeShops < ActiveRecord::Migration[6.1]
  def change
    create_table :bike_shops do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.integer :phone_number, null: false

      t.timestamps
    end
  end
end
