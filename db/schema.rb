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

ActiveRecord::Schema.define(version: 20161028105057) do

  create_table "educations", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.date     "date"
    t.string   "subject"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "educations", ["person_id"], name: "index_educations_on_person_id"

  create_table "employments", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "title"
    t.date     "date"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employments", ["person_id"], name: "index_employments_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.string   "location"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skills", ["person_id"], name: "index_skills_on_person_id"

end
