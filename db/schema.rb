# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_29_163523) do
  create_table "companies", force: :cascade do |t|
    t.string "CompanyId", null: false
    t.string "Name"
    t.boolean "Active"
    t.index ["CompanyId"], name: "index_companies_on_CompanyId", unique: true
  end

  create_table "part_revs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "CompanyId"
    t.string "PartNum"
    t.string "RevisionNum"
    t.string "RevisionNote"
    t.date "EffectiveDate", default: -> { "CURRENT_DATE" }, null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "CompanyId", null: false
    t.string "PartNum", null: false
    t.string "PartDescription"
    t.boolean "SerialTracked"
    t.string "DefaultUom"
    t.boolean "PhantomBOM"
    t.index ["CompanyId", "PartNum"], name: "index_parts_on_CompanyId_and_PartNum", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end
end
