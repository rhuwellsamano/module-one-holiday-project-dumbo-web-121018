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

ActiveRecord::Schema.define(version: 20190102172106) do

  create_table "battles", force: :cascade do |t|
    t.string  "battle_name"
    t.integer "rocketship_id"
    t.integer "enemy_id"
    t.integer "mission_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "destination_name"
  end

  create_table "enemies", force: :cascade do |t|
    t.string  "enemy_name"
    t.integer "health"
    t.string  "status"
  end

  create_table "enemys", force: :cascade do |t|
    t.string  "enemy_name"
    t.integer "health"
    t.string  "status"
  end

  create_table "items", force: :cascade do |t|
    t.string  "item_name"
    t.integer "user_id"
    t.integer "mission_id"
    t.string  "status"
  end

  create_table "missions", force: :cascade do |t|
    t.string  "mission_name"
    t.string  "status"
    t.integer "user_id"
    t.integer "destination_id"
    t.integer "rocketship_id"
    t.integer "pilot_id"
    t.integer "enemy_id"
  end

  create_table "pilots", force: :cascade do |t|
    t.string "pilot_name"
    t.string "status"
  end

  create_table "rocketships", force: :cascade do |t|
    t.string  "rocketship_name"
    t.integer "health"
    t.string  "status"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
  end

end
