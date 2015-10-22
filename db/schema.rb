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

ActiveRecord::Schema.define(version: 20151020095520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.text     "name"
    t.text     "address"
    t.text     "hours"
    t.text     "yelp_rating"
    t.text     "avg_burger_rating"
    t.text     "latitude"
    t.text     "longitude"
    t.text     "yelp_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "burger_name"
    t.text     "rating"
    t.text     "review"
    t.text     "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "image"
    t.integer  "restaurant_id"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text     "provider"
    t.text     "uid"
    t.text     "name"
    t.text     "email"
    t.text     "gender"
    t.date     "date_of_birth"
    t.text     "location"
    t.integer  "total_reviews"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
