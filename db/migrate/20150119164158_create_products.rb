class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.integer :number_available

      t.timestamps null: false
    end
  end
end
