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

ActiveRecord::Schema.define(version: 20160117180934) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "product_type_id", limit: 4
    t.string   "description",     limit: 255
    t.integer  "views",           limit: 4
    t.boolean  "published",       limit: 1
    t.datetime "published_date"
    t.integer  "publisher_id",    limit: 4
    t.integer  "category_id",     limit: 4
    t.integer  "license_id",      limit: 4
    t.datetime "time_dutation"
    t.integer  "group_id",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "products", ["category_id"], name: "fk_rails_fb915499a4", using: :btree
  add_index "products", ["group_id"], name: "fk_rails_ed34620b74", using: :btree
  add_index "products", ["license_id"], name: "fk_rails_abf7cd31e9", using: :btree
  add_index "products", ["product_type_id"], name: "fk_rails_8464b8e5d7", using: :btree
  add_index "products", ["publisher_id"], name: "fk_rails_693e212a7f", using: :btree

  create_table "publishers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "user_id",    limit: 4
    t.string   "phone",      limit: 255
    t.date     "birthday"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "role",       limit: 4
  end

  add_foreign_key "products", "categories"
  add_foreign_key "products", "groups"
  add_foreign_key "products", "licenses"
  add_foreign_key "products", "product_types"
  add_foreign_key "products", "publishers"
end
