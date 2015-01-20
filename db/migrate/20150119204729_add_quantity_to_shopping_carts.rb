class AddQuantityToShoppingCarts < ActiveRecord::Migration
  def change
  	add_column :shopping_carts, :quantity, :integer
  end
end
