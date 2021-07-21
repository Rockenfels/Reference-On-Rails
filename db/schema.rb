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

ActiveRecord::Schema.define(version: 2021_07_20_163317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bike_shops", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.integer "phone_number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bikes", force: :cascade do |t|
    t.string "brand", null: false
    t.string "model", null: false
    t.integer "year", default: 2021, null: false
    t.string "color"
    t.integer "gears", default: 9, null: false
    t.integer "suspension", null: false
    t.boolean "hydraulic", default: false
    t.boolean "tubeless", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "rider_id"
    t.bigint "bike_shop_id"
    t.index ["bike_shop_id"], name: "index_bikes_on_bike_shop_id"
    t.index ["rider_id"], name: "index_bikes_on_rider_id"
  end

  create_table "riders", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "preferred_name"
    t.string "email", null: false
    t.string "uid", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bikes", "bike_shops"
  add_foreign_key "bikes", "riders"
end
