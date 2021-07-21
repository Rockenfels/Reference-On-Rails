=begin
~(
  This migration was created using `bin/rails g migration AddRiderAndBikeShopToBike rider:references bike_shop:references`
  Again, because a bike can be built and not have an owener or a bike shop yet, I've set `null: true`
)~
=end

class AddRiderAndBikeShopToBike < ActiveRecord::Migration[6.1]
  def change
    add_reference :bikes, :rider, null: true, foreign_key: true
    add_reference :bikes, :bike_shop, null: true, foreign_key: true
  end
end
