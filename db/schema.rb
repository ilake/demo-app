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

ActiveRecord::Schema.define(version: 2020_07_28_032809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transactions", force: :cascade do |t|
    t.integer "payer_wallet_id", null: false
    t.integer "payee_wallet_id", null: false
    t.decimal "amount", default: "0.0"
    t.integer "state", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payer_wallet_id", "payee_wallet_id"], name: "index_transactions_on_payer_wallet_id_and_payee_wallet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "user_type", null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "balance", default: "0.0", null: false
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

end
