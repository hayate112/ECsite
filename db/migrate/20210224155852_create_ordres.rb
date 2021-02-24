class CreateOrdres < ActiveRecord::Migration[5.2]
  def change
    create_table :ordres do |t|
      t.integer :customer_id
      t.integer :shipping_cost
      t.integer :total_payment
      t.integer :how_to_pay
      t.integer :order_status
      t.string :postal_code
      t.string :address
      t.string :receiver_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
