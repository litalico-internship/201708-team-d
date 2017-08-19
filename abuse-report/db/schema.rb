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
ActiveRecord::Schema.define(version: 20170819081057) do
=======
ActiveRecord::Schema.define(version: 20170819084316) do

  create_table "report_signs", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "signs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id", nil], name: "index_report_signs_on_report_id_and_sign_id", unique: true
    t.index ["report_id"], name: "index_report_signs_on_report_id"
    t.index ["signs_id"], name: "index_report_signs_on_signs_id"
  end
>>>>>>> e349bcfa33329896146d655f335e1fb3e216c9eb

  create_table "reports", force: :cascade do |t|
    t.string   "ls"
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
