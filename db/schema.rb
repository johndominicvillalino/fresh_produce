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

ActiveRecord::Schema[7.0].define(version: 2022_08_24_123418) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_adopts", force: :cascade do |t|
    t.string "image"
    t.string "image_url"
    t.string "name"
    t.float "price"
    t.integer "minimum_order"
    t.integer "size_measure"
    t.integer "units_available"
    t.date "harvest_time"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_adopts_on_user_id"
  end

  create_table "product_boxes", force: :cascade do |t|
    t.string "image"
    t.string "image_url"
    t.float "price"
    t.string "name"
    t.integer "minimum_order"
    t.string "size_measure"
    t.integer "edd"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_boxes_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "price"
    t.integer "minimum_order"
    t.string "qty_measuremnet"
    t.integer "units_available"
    t.date "harvest_time"
    t.string "product_type"
    t.integer "estimated_delivery"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
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
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "product_adopts", "users"
  add_foreign_key "product_boxes", "users"
  add_foreign_key "products", "users"
end
