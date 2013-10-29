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

ActiveRecord::Schema.define(version: 20131028184757) do

  create_table "sailboats", force: true do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.text     "description"
    t.text     "equipment"
    t.integer  "year"
    t.integer  "length"
    t.integer  "beam"
    t.integer  "draft"
    t.string   "material"
    t.string   "hull"
    t.integer  "displacement"
    t.string   "boat_type"
    t.string   "rigging"
    t.integer  "births"
    t.integer  "cabins"
    t.integer  "heads"
    t.integer  "showers"
    t.integer  "engines"
    t.string   "engine_type"
    t.string   "fuel_type"
    t.integer  "hours"
    t.integer  "horsepower"
    t.string   "boat_location_general"
    t.string   "boat_location_city"
    t.string   "boat_location_state"
    t.integer  "boat_location_zip"
    t.string   "condition"
    t.decimal  "price"
    t.datetime "create_date"
    t.datetime "update_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured"
    t.date     "featured_end_date"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
