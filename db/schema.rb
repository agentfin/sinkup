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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130303163726) do

  create_table "dives", :force => true do |t|
    t.integer  "user_id"
    t.integer  "site_id"
    t.date     "dive_date"
    t.integer  "dive_rating"
    t.string   "comment"
    t.string   "photo_link"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "location"
    t.float    "gps_lat"
    t.float    "gps_lon"
    t.string   "description"
    t.integer  "difficulty"
    t.integer  "depth"
    t.string   "site_type"
    t.string   "sub_type"
    t.date     "sink_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "bio"
    t.string   "pic_url"
    t.string   "twitter_handle"
    t.integer  "age"
    t.integer  "dive_count"
    t.string   "hometown"
    t.string   "diver_type"
    t.integer  "diver_level"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
