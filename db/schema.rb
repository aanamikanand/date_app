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

ActiveRecord::Schema.define(version: 20160530195022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip",        null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.boolean  "reading"
    t.boolean  "travelling"
    t.boolean  "music"
    t.boolean  "art"
    t.boolean  "games"
    t.string   "others"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "gender",                     null: false
    t.integer  "age",                        null: false
    t.string   "religion"
    t.string   "country"
    t.string   "status"
    t.boolean  "image",      default: false
    t.string   "email",                      null: false
    t.string   "password",                   null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
