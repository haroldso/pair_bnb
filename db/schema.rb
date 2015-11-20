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

ActiveRecord::Schema.define(version: 20151120071558) do

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.string   "user_id"
    t.string   "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "room_type"
    t.string   "home_type"
    t.integer  "accomodates"
    t.string   "city"
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.string   "listing_name"
    t.string   "summary"
    t.integer  "bedcount"
    t.string   "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "checkin_date"
    t.date     "checkout_date"
    t.string   "user_id"
    t.string   "owner_id"
    t.integer  "daycount"
    t.string   "person"
    t.string   "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "gender"
    t.string   "birthday"
    t.string   "email"
    t.string   "contact"
    t.string   "address"
    t.string   "about_you"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "password_digest"
    t.string   "provider"
    t.string   "uid"
    t.datetime "oauth_expires_at"
    t.string   "name"
  end

  add_index "users", ["provider"], name: "index_users_on_provider"
  add_index "users", ["uid"], name: "index_users_on_uid"

end
