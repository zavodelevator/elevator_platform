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

ActiveRecord::Schema[7.0].define(version: 2022_09_22_132918) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banks", force: :cascade do |t|
    t.string "number_caunt_bank"
    t.string "mfo"
    t.string "name_and_rquesit_bank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "data_create_contract"
    t.string "number_contract"
    t.bigint "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_contracts_on_organization_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "date_send"
    t.string "params_for_send"
    t.string "order_status"
    t.string "ful_price"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "ederpou"
    t.string "ipn"
    t.string "type_rent"
    t.string "adress"
    t.string "factic_adress"
    t.string "send_adress"
    t.string "number_caunt_bank"
    t.string "mfo"
    t.string "name_and_rquesit_bank"
    t.string "phone"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oue_organizations", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "ederpou"
    t.string "ipn"
    t.string "type_rent"
    t.string "adress"
    t.string "factic_adress"
    t.string "send_adress"
    t.string "phone"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perssons", force: :cascade do |t|
    t.string "firct_name"
    t.string "last_name"
    t.string "father_nane"
    t.string "name_for_contract"
    t.string "phone"
    t.string "email"
    t.string "send_adress"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tovars", force: :cascade do |t|
    t.string "name"
    t.string "count"
    t.string "metric"
    t.string "articul"
    t.string "price_rozdr"
    t.string "price_opt"
    t.string "price"
    t.string "sklad_locate"
    t.string "params_data"
    t.string "time_on_sklad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "rather_name"
    t.string "name_for_contract"
    t.string "phone"
    t.string "email"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contracts", "organizations"
end
