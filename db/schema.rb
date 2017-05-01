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

ActiveRecord::Schema.define(version: 20170429183933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "operatingsystems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programms", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.integer  "version"
    t.integer  "test"
    t.string   "dowloadLinkOne"
    t.string   "dowloadLinkTwo"
    t.string   "screenshotsLinks"
    t.integer  "rating"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "programs_developers", id: false, force: :cascade do |t|
    t.integer "program_id"
    t.integer "developer_id"
  end

  add_index "programs_developers", ["developer_id"], name: "index_programs_developers_on_developer_id", using: :btree
  add_index "programs_developers", ["program_id"], name: "index_programs_developers_on_program_id", using: :btree

  create_table "programs_operatingsystems", id: false, force: :cascade do |t|
    t.integer "program_id"
    t.integer "operatingsystem_id"
  end

  add_index "programs_operatingsystems", ["operatingsystem_id"], name: "index_programs_operatingsystems_on_operatingsystem_id", using: :btree
  add_index "programs_operatingsystems", ["program_id"], name: "index_programs_operatingsystems_on_program_id", using: :btree

  create_table "programs_semanticcategories", id: false, force: :cascade do |t|
    t.integer "program_id"
    t.integer "semanticcategory_id"
  end

  add_index "programs_semanticcategories", ["program_id"], name: "index_programs_semanticcategories_on_program_id", using: :btree
  add_index "programs_semanticcategories", ["semanticcategory_id"], name: "index_programs_semanticcategories_on_semanticcategory_id", using: :btree

  create_table "programs_typeofsoftwares", id: false, force: :cascade do |t|
    t.integer "program_id"
    t.integer "typeofsoftware_id"
  end

  add_index "programs_typeofsoftwares", ["program_id"], name: "index_programs_typeofsoftwares_on_program_id", using: :btree
  add_index "programs_typeofsoftwares", ["typeofsoftware_id"], name: "index_programs_typeofsoftwares_on_typeofsoftware_id", using: :btree

  create_table "programs_users", id: false, force: :cascade do |t|
    t.integer "program_id"
    t.integer "user_id"
  end

  add_index "programs_users", ["program_id"], name: "index_programs_users_on_program_id", using: :btree
  add_index "programs_users", ["user_id"], name: "index_programs_users_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semanticcategories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "uname"
    t.string   "uemail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typesoftwares", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "identities", "users"
end
