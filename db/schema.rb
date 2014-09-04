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

ActiveRecord::Schema.define(version: 20140904195922) do

  create_table "experiment_designers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "full_factorial_design"
  end

  create_table "factorial_trees", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factors", force: true do |t|
    t.integer  "experiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "levels"
  end

  add_index "factors", ["experiment_id"], name: "index_factors_on_experiment_id"

  create_table "nodes", force: true do |t|
    t.integer  "factorial_tree_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nodes", ["factorial_tree_id"], name: "index_nodes_on_factorial_tree_id"

  create_table "surveys", force: true do |t|
    t.integer  "experiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surveys", ["experiment_id"], name: "index_surveys_on_experiment_id"

end
