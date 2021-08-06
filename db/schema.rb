# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_12_054115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_titles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "magazine_oenologists", force: :cascade do |t|
    t.bigint "magazine_id"
    t.bigint "oenologist_id"
    t.bigint "job_title_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_title_id"], name: "index_magazine_oenologists_on_job_title_id"
    t.index ["magazine_id"], name: "index_magazine_oenologists_on_magazine_id"
    t.index ["oenologist_id"], name: "index_magazine_oenologists_on_oenologist_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "oenologists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "available", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_oenologists", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "oenologist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["oenologist_id"], name: "index_wine_oenologists_on_oenologist_id"
    t.index ["wine_id"], name: "index_wine_oenologists_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "score"
  end

  create_table "winestrains", force: :cascade do |t|
    t.integer "percent"
    t.bigint "wine_id", null: false
    t.bigint "strain_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["strain_id"], name: "index_winestrains_on_strain_id"
    t.index ["wine_id"], name: "index_winestrains_on_wine_id"
  end

  add_foreign_key "magazine_oenologists", "job_titles"
  add_foreign_key "magazine_oenologists", "magazines"
  add_foreign_key "magazine_oenologists", "oenologists"
  add_foreign_key "wine_oenologists", "oenologists"
  add_foreign_key "wine_oenologists", "wines"
  add_foreign_key "winestrains", "strains"
  add_foreign_key "winestrains", "wines"
end
