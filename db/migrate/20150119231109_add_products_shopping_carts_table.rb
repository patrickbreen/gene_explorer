class AddProductsShoppingCartsTable < ActiveRecord::Migration
  def change
  	create_table :products_shopping_carts, id: false do |t|
  		t.integer :product_id
  		t.integer :shopping_cart_id
    end

    add_index :products_shopping_carts, :product_id
    add_index :products_shopping_carts, :shopping_cart_id

    remove_column :shopping_carts, :product_id
  end
end
