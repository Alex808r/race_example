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

ActiveRecord::Schema.define(version: 2023_08_07_135522) do

  create_table "cities", force: :cascade do |t|
    t.string "name_city"
    t.string "socr_city"
    t.string "gni_city"
    t.integer "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "event_categories", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_category_group_id", null: false
    t.index ["event_category_group_id"], name: "index_event_categories_on_event_category_group_id"
  end

  create_table "event_category_groups", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title", null: false
    t.integer "race_id", null: false
    t.integer "event_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_category_id"], name: "index_events_on_event_category_id"
    t.index ["race_id"], name: "index_events_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name", null: false
    t.string "place", null: false
    t.datetime "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name_region"
    t.string "socr_region"
    t.string "gni_region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cities", "regions"
  add_foreign_key "event_categories", "event_category_groups"
  add_foreign_key "events", "event_categories"
  add_foreign_key "events", "races"
end
