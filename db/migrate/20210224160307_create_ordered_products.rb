class CreateOrderedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ordered_products do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :count
      t.integer :tax_included_price
      t.string :production_status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
