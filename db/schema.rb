# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_24_160307) do

  create_table "cart_products", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "product_id"
    t.integer "count"
    t.datetime "reated_at"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "ordered_products", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.integer "count"
    t.integer "tax_included_price"
    t.string "production_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordres", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "shipping_cost"
    t.integer "total_payment"
    t.integer "how_to_pay"
    t.integer "order_status"
    t.string "postal_code"
    t.string "address"
    t.string "receiver_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_type_id"
    t.string "name"
    t.text "description"
    t.integer "price"
    t.text "image_id"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receivers", force: :cascade do |t|
    t.integer "customer_id"
    t.string "name"
    t.integer "postal_code"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
