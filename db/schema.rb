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

ActiveRecord::Schema.define(version: 20181228082336) do

  create_table "destinations", force: :cascade do |t|
    t.string "destination_name"
  end

  create_table "items", force: :cascade do |t|
    t.string  "item_name"
    t.integer "quantity"
  end

  create_table "missions", force: :cascade do |t|
    t.string  "mission_name"
    t.integer "user_id"
    t.integer "item_id"
    t.integer "destination_id"
    t.integer "rocketship_id"
    t.integer "pilot_id"
    t.integer "mission_id"
  end

  create_table "pilot", force: :cascade do |t|
    t.string "pilot_name"
  end

  create_table "rocketships", force: :cascade do |t|
    t.string "rocket_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

end