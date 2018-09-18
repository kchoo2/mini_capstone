class RemoveProductIdAndQuantityFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :product_id
    remove_column :orders, :quantity
  end
end
