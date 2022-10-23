ActiveRecord::Schema.define(version: 2022_10_21_084332) do

  create_table "properts", force: :cascade do |t|
    t.string "title"
    t.integer "rent"
    t.string "address"
    t.integer "ago"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "route"
    t.string "name"
    t.integer "minutes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "propert_id", null: false
    t.index ["propert_id"], name: "index_stations_on_propert_id"
  end

  add_foreign_key "stations", "properts"
end
