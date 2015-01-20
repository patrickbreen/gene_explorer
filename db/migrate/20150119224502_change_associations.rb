class ChangeAssociations < ActiveRecord::Migration
  def change
  	remove_column :shopping_carts, :product_id
    remove_column :products, :order_id
    remove_column :orders, :product_id
  end
end
