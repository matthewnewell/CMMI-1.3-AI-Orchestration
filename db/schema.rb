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

ActiveRecord::Schema.define(version: 20140703170452) do

  create_table "generic_goals", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generic_practice_elaborations", force: true do |t|
    t.integer  "process_area_id"
    t.integer  "generic_practice_id"
    t.text     "gp_elaboration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generic_practices", force: true do |t|
    t.string   "name"
    t.text     "summary"
    t.text     "description"
    t.integer  "generic_goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maturity_levels", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_area_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_areas", force: true do |t|
    t.string   "name"
    t.text     "purpose"
    t.integer  "maturity_level_id"
    t.integer  "process_area_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specific_goals", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "process_area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specific_practice_elaborations", force: true do |t|
    t.integer  "process_area_id"
    t.integer  "specific_practice_id"
    t.text     "sp_elaboration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specific_practices", force: true do |t|
    t.string   "name"
    t.text     "summary"
    t.text     "description"
    t.integer  "process_area_id"
    t.integer  "specific_goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
