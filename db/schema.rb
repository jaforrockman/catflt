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

ActiveRecord::Schema.define(version: 20230121155352) do

  create_table "caterings", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coll_vcrs", force: :cascade do |t|
    t.integer "company_id"
    t.date "coll_date"
    t.integer "invoice_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.integer "item_id"
    t.decimal "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "coll_vcr_id"
  end

  create_table "issues", force: :cascade do |t|
    t.integer "item_id"
    t.decimal "qty"
    t.integer "voucher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voucher_id"], name: "index_issues_on_voucher_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "inum"
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "offr_scale"
    t.decimal "am_scale"
    t.decimal "modc_scale"
    t.decimal "civ1_scale"
    t.decimal "civ2_scale"
    t.string "mes_unit"
  end

  create_table "messes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "bd"
    t.string "name"
    t.integer "rank_id"
    t.integer "catering_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vouchers", force: :cascade do |t|
    t.string "name"
    t.integer "mess_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "catering_id"
    t.integer "iv_numb"
  end

end
