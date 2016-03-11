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

ActiveRecord::Schema.define(version: 20160310202313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "divorce_with_assets", force: :cascade do |t|
    t.string   "filing"
    t.string   "husband_name"
    t.string   "husband_address"
    t.string   "husband_city"
    t.string   "husband_state"
    t.string   "husband_zip"
    t.string   "husband_phone"
    t.string   "husband_fax"
    t.string   "husband_email"
    t.string   "wife_name"
    t.string   "wife_address"
    t.string   "wife_city"
    t.string   "wife_state"
    t.string   "wife_zip"
    t.string   "wife_phone"
    t.string   "wife_fax"
    t.string   "wife_email"
    t.string   "jurisdiction"
    t.date     "marriage_date"
    t.date     "separation_date"
    t.string   "dissolution"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "no_children_no_debts", force: :cascade do |t|
    t.string   "husband_name"
    t.string   "husband_address"
    t.string   "husband_city"
    t.string   "husband_state"
    t.string   "husband_zip"
    t.string   "husband_phone"
    t.string   "husband_fax"
    t.date     "husband_date"
    t.string   "husband_email"
    t.string   "wife_name"
    t.string   "wife_address"
    t.string   "wife_city"
    t.string   "wife_state"
    t.string   "wife_zip"
    t.string   "wife_phone"
    t.string   "wife_email"
    t.date     "wife_date"
    t.date     "marriage_date"
    t.string   "marriage_city"
    t.string   "marriage_state"
    t.string   "marriage_country"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
