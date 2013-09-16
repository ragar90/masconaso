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

ActiveRecord::Schema.define(version: 20130915225602) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitions", force: true do |t|
    t.integer  "team_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "team1_results"
    t.string   "team2_results"
    t.datetime "dateted_to"
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
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true, using: :btree
  add_index "players", ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree

  create_table "signings", force: true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.boolean  "confirmed"
    t.datetime "invitation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
