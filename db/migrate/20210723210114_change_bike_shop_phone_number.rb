class ChangeBikeShopPhoneNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :bike_shops, :phone_number, :bigint
  end
end
