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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111228050538) do

  create_table "captains", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rosters", :force => true do |t|
    t.string   "dow"
    t.integer  "ship_id"
    t.integer  "captain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rosters", ["captain_id"], :name => "index_rosters_on_captain_id"
  add_index "rosters", ["ship_id"], :name => "index_rosters_on_ship_id"

  create_table "ships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
