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

ActiveRecord::Schema.define(version: 20141027175912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "commented_id"
    t.string   "commented_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commented_id"], name: "index_comments_on_commented_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "confirmations", force: true do |t|
    t.integer "user_id"
    t.string  "token"
    t.boolean "confirmed", default: false
  end

  add_index "confirmations", ["user_id"], name: "index_confirmations_on_user_id", using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "rant_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["rant_id"], name: "index_favorites_on_rant_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "follows", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["follower_id"], name: "index_follows_on_follower_id", using: :btree

  create_table "rants", force: true do |t|
    t.integer  "user_id"
    t.text     "rant"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "spam",       default: false
  end

  add_index "rants", ["user_id"], name: "index_rants_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "bio"
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar",          default: "http://sw-rantly.s3.amazonaws.com/uploads/32a365f1-7cf4-4a76-9030-55bcef22b919/200.jpeg"
    t.string   "email"
    t.boolean  "active",          default: false
    t.boolean  "admin",           default: false
  end

end
