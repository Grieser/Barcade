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

ActiveRecord::Schema.define(version: 20130929193338) do

  create_table "games", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "version"
    t.string   "publisher"
    t.string   "cabinet_type"
    t.string   "genre"
    t.integer  "num_of_players"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "score"
    t.date     "date"
    t.boolean  "is_verified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
