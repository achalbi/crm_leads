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

ActiveRecord::Schema.define(version: 2020_01_09_132400) do

  create_table "amcs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.string "type"
    t.integer "price"
    t.string "tax_type"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "string"
    t.string "email"
    t.string "phone"
    t.string "company_name"
    t.string "company_address"
    t.string "site_name"
    t.string "site_address"
    t.date "hand_over_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "status"
    t.string "password"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enquiries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "enquiry_date"
    t.integer "floor_count"
    t.string "lift_type"
    t.string "floor_destination"
    t.string "machine_mounting_room"
    t.integer "stops_count"
    t.string "cabin_type"
    t.integer "openings_count"
    t.string "shaft_width"
    t.string "shaft_depth"
    t.integer "lifts_count"
    t.string "capacity"
    t.string "capacity_units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "order_date"
    t.integer "floor_count"
    t.string "lift_type"
    t.string "floor_destination"
    t.string "machine_mounting_room"
    t.integer "stops_count"
    t.string "cabin_type"
    t.integer "opening_count"
    t.string "volume"
    t.integer "shaft_width"
    t.integer "shaft_depth"
    t.integer "lifts_count"
    t.string "capacity"
    t.string "capacity_units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respondents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.date "lead_date"
    t.string "email"
    t.string "lead_source"
    t.string "select_executive"
    t.string "phone"
    t.string "lead_type"
    t.string "company_name"
    t.string "company_address"
    t.string "site_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "site_address"
  end

end
