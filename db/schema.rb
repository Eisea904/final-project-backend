# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_27_125924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventory_items", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_inventory_items_on_item_id"
    t.index ["shop_id"], name: "index_inventory_items_on_shop_id"
  end

  create_table "items", force: :cascade do |t|
    t.boolean "plot", default: false
    t.boolean "magical", default: false
    t.string "item_name", default: ""
    t.string "description", default: ""
    t.integer "weight", default: 1
    t.integer "quantity", default: 1
    t.integer "cost", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", default: ""
    t.string "bio", default: ""
    t.integer "roses", default: 100
    t.integer "electrum", default: 250
    t.boolean "open", default: false
    t.string "image", default: ""
    t.string "password_digest", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "inventory_items", "items"
  add_foreign_key "inventory_items", "shops"
end
