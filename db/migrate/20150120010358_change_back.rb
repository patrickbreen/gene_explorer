class ChangeBack < ActiveRecord::Migration
  def change
  	add_column :shopping_carts, :product_id, :integer
  end
  
end
