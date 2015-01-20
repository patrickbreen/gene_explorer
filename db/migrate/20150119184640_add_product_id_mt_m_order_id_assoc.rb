class AddProductIdMtMOrderIdAssoc < ActiveRecord::Migration
  def change
  	add_column :products, :order_id, :integer
  	add_column :orders, :product_id, :integer
  end
end
