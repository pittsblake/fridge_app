
ActiveRecord::Schema.define(version: 20171026202200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.boolean "alchoholic"
    t.bigint "fridge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fridge_id"], name: "index_drinks_on_fridge_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.boolean "vegan"
    t.date "time_stamp"
    t.bigint "fridge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fridge_id"], name: "index_foods_on_fridge_id"
  end

  create_table "fridges", force: :cascade do |t|
    t.string "location"
    t.string "brand"
    t.integer "size"
    t.boolean "has_food"
    t.boolean "has_drink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drinks", "fridges"
  add_foreign_key "foods", "fridges"
end
