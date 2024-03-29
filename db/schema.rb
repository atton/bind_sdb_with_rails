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

ActiveRecord::Schema.define(version: 20151009111830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forward_records", force: :cascade do |t|
    t.integer  "record_id"
    t.string   "name",       default: "",   null: false
    t.string   "rdata",      default: "",   null: false
    t.string   "rdtype",     default: "",   null: false
    t.integer  "ttl",        default: 3600, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "forward_records", ["record_id"], name: "index_forward_records_on_record_id", using: :btree

  create_table "records", force: :cascade do |t|
    t.integer  "ip",         default: 1,  null: false
    t.string   "domain",     default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "reverse_records", force: :cascade do |t|
    t.integer  "record_id"
    t.string   "name",       default: "",   null: false
    t.string   "rdata",      default: "",   null: false
    t.string   "rdtype",     default: "",   null: false
    t.integer  "ttl",        default: 3600, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "reverse_records", ["record_id"], name: "index_reverse_records_on_record_id", using: :btree

  add_foreign_key "forward_records", "records"
  add_foreign_key "reverse_records", "records"
end
