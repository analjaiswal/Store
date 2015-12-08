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

ActiveRecord::Schema.define(version: 20151208024544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appears_ins", force: true do |t|
    t.integer  "cart_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "pricesold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "customer_id"
    t.string   "saname"
    t.integer  "creditcard_id"
    t.string   "tstatus"
    t.datetime "tdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "total"
  end

  create_table "computers", force: true do |t|
    t.integer  "product_id"
    t.string   "cputype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creditcards", force: true do |t|
    t.integer  "secnumber"
    t.string   "ownername"
    t.string   "cctype"
    t.string   "ccaddress"
    t.datetime "expdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

  create_table "customers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "fname"
    t.string   "lname"
    t.text     "phone"
    t.string   "address"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "laptops", force: true do |t|
    t.integer  "product_id"
    t.string   "btype"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offerproducts", force: true do |t|
    t.integer  "product_id"
    t.integer  "offerprice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printers", force: true do |t|
    t.integer  "product_id"
    t.string   "printertype"
    t.integer  "resolution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "ptype"
    t.string   "pname"
    t.string   "pprice"
    t.text     "description"
    t.integer  "pquantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippingaddresses", force: true do |t|
    t.integer  "customer_id"
    t.string   "saname"
    t.string   "recepientname"
    t.string   "street"
    t.string   "snumber"
    t.string   "city"
    t.integer  "zip"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "silver_and_aboves", force: true do |t|
    t.integer  "customer_id"
    t.boolean  "creditline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stored_cards", force: true do |t|
    t.integer  "creditcard_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
