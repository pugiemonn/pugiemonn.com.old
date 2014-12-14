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

ActiveRecord::Schema.define(version: 20141214164959) do

  create_table "admin_users", force: true do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true

  create_table "communities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventattendances", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "eventattendances", ["event_id", "user_id"], name: "index_eventattendances_on_event_id_and_user_id", unique: true

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "members_limit"
    t.string   "venue"
    t.string   "venue_url"
    t.string   "venue_address"
    t.boolean  "done"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "community_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "flag"
    t.integer  "user_id"
    t.string   "service"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.string   "event_url"
    t.string   "address"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.string   "place"
    t.integer  "limit",         default: 0
    t.integer  "accepted",      default: 0
    t.integer  "waiting",       default: 0
  end

  add_index "events", ["community_id"], name: "index_events_on_community_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "members", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["event_id", "user_id"], name: "index_members_on_event_id_and_user_id", unique: true

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "sex"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.boolean  "done",       default: false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
