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

ActiveRecord::Schema.define(version: 20141106045701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notes", force: true do |t|
    t.integer  "semitone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "semitones",  default: [],                array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available",  default: true, null: false
  end

  create_table "tunes", force: true do |t|
    t.string   "name"
    t.string   "crotchets",  default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lyrics",     default: [], array: true
  end

end
