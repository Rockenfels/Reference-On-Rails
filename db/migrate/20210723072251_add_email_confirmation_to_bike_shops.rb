class AddEmailConfirmationToBikeShops < ActiveRecord::Migration[6.1]
  def change
    add_column :bike_shops, :email, :string
    add_column :bike_shops, :email_confirmation, :string
  end
end
