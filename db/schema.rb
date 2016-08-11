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

ActiveRecord::Schema.define(version: 0) do

  create_table "django_migrations", force: :cascade do |t|
    t.string   "app",     limit: 255, null: false
    t.string   "name",    limit: 255, null: false
    t.datetime "applied",             null: false
  end

  create_table "itemcategories", primary_key: "ID", force: :cascade do |t|
    t.string "CategoryName",        limit: 25,  null: false
    t.string "CategoryDescription", limit: 100, null: false
  end

  create_table "items", primary_key: "ID", force: :cascade do |t|
    t.string  "ItemName",        limit: 100, null: false
    t.integer "ItemCategory_ID", limit: 4,   null: false
    t.string  "ItemDescription", limit: 100, null: false
    t.float   "ItemCost",        limit: 24,  null: false
  end

  add_index "items", ["ItemCategory_ID"], name: "ItemCategory_ID", using: :btree

  create_table "useraccounting", primary_key: "ID", force: :cascade do |t|
    t.integer "User_ID",       limit: 4,                null: false
    t.float   "CostCategory1", limit: 24, default: 0.0
    t.float   "CostCategory2", limit: 24, default: 0.0
    t.float   "CostCategory3", limit: 24, default: 0.0
    t.float   "CostCategory4", limit: 24, default: 0.0
    t.float   "CostCategory5", limit: 24, default: 0.0
    t.float   "CostCategory6", limit: 24, default: 0.0
    t.float   "CostCategory7", limit: 24, default: 0.0
    t.float   "CostCategory8", limit: 24, default: 0.0
    t.float   "TotalTax",      limit: 24,               null: false
    t.float   "GrandTotal",    limit: 24,               null: false
  end

  add_index "useraccounting", ["User_ID"], name: "User_ID", using: :btree

  create_table "useritemsbridge", primary_key: "ID", force: :cascade do |t|
    t.integer "User_ID",  limit: 4,             null: false
    t.integer "Item_ID",  limit: 4,             null: false
    t.integer "Quantity", limit: 4, default: 0, null: false
  end

  add_index "useritemsbridge", ["Item_ID"], name: "Item_ID", using: :btree
  add_index "useritemsbridge", ["User_ID"], name: "User_ID", using: :btree

  create_table "users", primary_key: "ID", force: :cascade do |t|
    t.string "FirstName",       limit: 50,  null: false
    t.string "MiddleName",      limit: 50,  null: false
    t.string "LastName",        limit: 50,  null: false
    t.string "Password_Digest", limit: 255, null: false
    t.string "Gender",          limit: 5,   null: false
    t.date   "DateOfBirth",                 null: false
    t.string "EmailID",         limit: 255, null: false
  end

  add_foreign_key "items", "itemcategories", column: "ItemCategory_ID", primary_key: "ID", name: "items_ibfk_1"
  add_foreign_key "useraccounting", "users", column: "User_ID", primary_key: "ID", name: "useraccounting_ibfk_1"
  add_foreign_key "useritemsbridge", "items", column: "Item_ID", primary_key: "ID", name: "useritemsbridge_ibfk_2"
  add_foreign_key "useritemsbridge", "users", column: "User_ID", primary_key: "ID", name: "useritemsbridge_ibfk_1"
end
