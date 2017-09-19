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

ActiveRecord::Schema.define(version: 20170915145909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.bigint "league_id"
    t.text "team_1"
    t.text "team_2"
    t.integer "team_1_score"
    t.integer "team_2_score"
    t.integer "number_of_ends"
    t.date "start_date"
    t.time "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sheet"
    t.index ["league_id"], name: "index_games_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.integer "length"
    t.text "day_of_the_week"
    t.integer "sheets"
    t.text "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "end_date"
    t.time "game_start_time"
  end

  create_table "players", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.boolean "member"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "team_id"
    t.text "position"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.text "lead"
    t.text "second"
    t.text "vice"
    t.text "skip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "league_id"
    t.text "team_name"
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  add_foreign_key "games", "leagues"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "leagues"
end
