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

ActiveRecord::Schema.define(version: 2020_03_15_103541) do

  create_table "financials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "year"
    t.integer "revenues"
    t.integer "grossRevenues"
    t.integer "operateRevenues"
    t.integer "nonOperateRevenues"
    t.integer "incomeTax"
    t.integer "income"
    t.integer "expense"
    t.integer "currentAssets"
    t.integer "fixedAssets"
    t.integer "totalAssets"
    t.integer "currentLiabilites"
    t.integer "fixedLiabilites"
    t.integer "totalLiabilites"
    t.integer "copitalStock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["user_id"], name: "index_financials_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "financials", "users"
end
