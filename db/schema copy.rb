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

ActiveRecord::Schema[7.0].define(version: 2022_09_20_103333) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.string "number"
    t.string "data_create"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "contract_id"
    t.index ["contract_id"], name: "index_organizations_on_contract_id"
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

end
