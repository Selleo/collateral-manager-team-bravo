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

ActiveRecord::Schema.define(version: 2021_02_13_165235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collateral_tags", force: :cascade do |t|
    t.bigint "collateral_id", null: false
    t.bigint "tag_id", null: false
    t.integer "strength"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collateral_id"], name: "index_collateral_tags_on_collateral_id"
    t.index ["tag_id"], name: "index_collateral_tags_on_tag_id"
  end

  create_table "collaterals", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "collateral_tags", "collaterals"
  add_foreign_key "collateral_tags", "tags"
end
