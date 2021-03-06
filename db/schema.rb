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

ActiveRecord::Schema.define(version: 20140416230403) do

  create_table "activities", force: true do |t|
    t.integer  "jem_id"
    t.string   "action"
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "trackable_name"
  end

  add_index "activities", ["jem_id"], name: "index_activities_on_jem_id"
  add_index "activities", ["trackable_id"], name: "index_activities_on_trackable_id"

  create_table "jems", force: true do |t|
    t.string   "name"
    t.string   "github"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
    t.string   "version_number"
    t.text     "description"
    t.string   "email"
    t.text     "summary"
    t.string   "homepage"
    t.integer  "user_id"
    t.string   "gem_repo"
    t.string   "rubygem_link"
    t.string   "ssh_url"
    t.string   "commit_message"
  end

  create_table "scripts", force: true do |t|
    t.string   "file"
    t.integer  "jem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
