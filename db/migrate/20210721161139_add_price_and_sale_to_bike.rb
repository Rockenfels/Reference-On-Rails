class AddPriceAndSaleToBike < ActiveRecord::Migration[6.1]
  def change
    add_column :bikes, :price, :integer
    add_column :bikes, :for_sale, :boolean, default: false
  end
end
