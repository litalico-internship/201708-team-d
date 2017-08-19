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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170819114734) do
=======
ActiveRecord::Schema.define(version: 20170819090153) do
>>>>>>> dbac95d0b2e925b5500766d8d87837a0a2cae87c

  create_table "notice_signs", force: :cascade do |t|
    t.integer  "notice_id"
    t.integer  "sign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notice_id"], name: "index_notice_signs_on_notice_id"
    t.index ["sign_id"], name: "index_notice_signs_on_sign_id"
    t.index [nil, nil], name: "index_notice_signs_on_notice_and_sign", unique: true
  end

  create_table "notices", force: :cascade do |t|
<<<<<<< HEAD
=======
    t.string   "school"
>>>>>>> dbac95d0b2e925b5500766d8d87837a0a2cae87c
    t.integer  "user_id"
    t.integer  "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.integer  "school_id"
    t.index ["school_id"], name: "index_notices_on_school_id"
=======
>>>>>>> dbac95d0b2e925b5500766d8d87837a0a2cae87c
    t.index ["status_id"], name: "index_notices_on_status_id"
    t.index ["user_id"], name: "index_notices_on_user_id"
  end

  create_table "report_signs", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "sign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id", "sign_id"], name: "index_report_signs_on_report_id_and_sign_id", unique: true
    t.index ["report_id"], name: "index_report_signs_on_report_id"
    t.index ["sign_id"], name: "index_report_signs_on_sign_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "ls"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
