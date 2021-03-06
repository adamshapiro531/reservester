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

ActiveRecord::Schema.define(version: 20141114171737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "owners", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "email"
    t.string   "date"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "state"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "name"
    t.string   "role",            default: "patron"
  end

end
