# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150315054202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lattitude"
    t.float    "longitude"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "iso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inscriptions", force: true do |t|
    t.integer  "team_id"
    t.integer  "tournament_id"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
  end

  create_table "matches", force: true do |t|
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "team1_results"
    t.string   "team2_results"
    t.boolean  "confirmed"
    t.datetime "dateted_to"
    t.string   "place"
    t.string   "map_latlng"
    t.string   "map_zoom"
    t.string   "is_cancel",     default: "f"
    t.integer  "tournament_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "password"
    t.string   "nickname"
    t.integer  "city_id"
    t.string   "phone"
    t.text     "description"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true, using: :btree
  add_index "players", ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree

  create_table "signings", force: true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "sport_id"
    t.boolean  "confirmed",     default: false
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.integer  "maximun_signings", default: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "iso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.string   "description"
    t.integer  "captain_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
  end

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "inscriptions_start"
    t.datetime "inscriptions_deadline"
    t.boolean  "is_open"
    t.integer  "league_id"
    t.text     "description"
    t.float    "inscription_cost"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
