# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_09_154831) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.integer "qty"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "ordered_items", force: :cascade do |t|
    t.integer "price"
    t.integer "seller_id"
    t.integer "quantity"
    t.integer "estimated_delivery"
    t.integer "total"
    t.date "harvest_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id", null: false
    t.string "qty_measurement"
    t.bigint "product_id"
    t.string "name"
    t.string "status"
    t.integer "qty"
    t.index ["order_id"], name: "index_ordered_items_on_order_id"
    t.index ["product_id"], name: "index_ordered_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "price"
    t.string "stage"
    t.string "order_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "price"
    t.integer "minimum_order"
    t.string "qty_measurement"
    t.integer "units_available"
    t.date "harvest_time"
    t.string "product_type"
    t.integer "estimated_delivery"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "solds", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "user_id", null: false
    t.integer "qty"
    t.integer "price"
    t.decimal "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.integer "order_reference"
    t.string "status"
    t.index ["product_id"], name: "index_solds_on_product_id"
    t.index ["user_id"], name: "index_solds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "bio"
    t.string "city"
    t.string "barangay"
    t.string "town"
    t.string "province"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "carts", "products"
  add_foreign_key "carts", "users"
  add_foreign_key "ordered_items", "orders"
  add_foreign_key "ordered_items", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "users"
  add_foreign_key "solds", "products"
  add_foreign_key "solds", "users"
end
