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

ActiveRecord::Schema[8.0].define(version: 2025_02_21_120033) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "city"
    t.text "description"
    t.string "palmares"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "club_id", null: false
    t.integer "height"
    t.string "draft"
    t.string "post"
    t.integer "min"
    t.integer "ppg"
    t.integer "reb"
    t.integer "blk"
    t.integer "stl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_players_on_club_id"
  end

  create_table "players_clubs", force: :cascade do |t|
    t.bigint "players_id", null: false
    t.bigint "clubs_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clubs_id"], name: "index_players_clubs_on_clubs_id"
    t.index ["players_id"], name: "index_players_clubs_on_players_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "pseudonyme"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "players", "clubs"
  add_foreign_key "players_clubs", "clubs", column: "clubs_id"
  add_foreign_key "players_clubs", "players", column: "players_id"
end
