class CreateCartProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_products do |t|
      t.integer :customer_id
      t.integer :product_id
      t.integer :count
      t.datetime :reated_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
