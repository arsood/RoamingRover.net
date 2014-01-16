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

ActiveRecord::Schema.define(version: 20140115040040) do

  create_table "bids", force: true do |t|
    t.text     "proposal",   limit: 255
    t.float    "rate"
    t.string   "status"
    t.integer  "walker_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.string   "breed"
    t.integer  "age"
    t.string   "image"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "about",      limit: 255
  end

  add_index "dogs", ["owner_id"], name: "index_dogs_on_owner_id"

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description", limit: 255
    t.string   "days"
    t.time     "time"
    t.float    "rate"
    t.integer  "owner_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["owner_id"], name: "index_jobs_on_owner_id"

  create_table "owners", force: true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zipcode"
  end

  create_table "reviews", force: true do |t|
    t.text     "review"
    t.integer  "rating"
    t.integer  "owner_id"
    t.integer  "walker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["owner_id"], name: "index_reviews_on_owner_id"
  add_index "reviews", ["walker_id"], name: "index_reviews_on_walker_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.string   "phone"
    t.string   "zipcode"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "walkers", force: true do |t|
    t.integer  "user_id"
    t.string   "zipcode"
    t.string   "breeds"
    t.date     "age"
    t.text     "experience", limit: 255
    t.text     "about",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
