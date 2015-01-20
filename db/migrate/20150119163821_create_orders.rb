class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :description
      t.float :price
      t.integer :quantity
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
