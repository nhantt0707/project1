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

ActiveRecord::Schema.define(version: 20161116042733) do

  create_table "activities", force: :cascade do |t|
    t.integer  "Action_table_id"
    t.string   "Action_type"
    t.string   "Action_table_name"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "activities", ["user_id"], name: "index_activities_on_user_id"

  create_table "answers", force: :cascade do |t|
    t.string   "Answer_content"
    t.boolean  "Is_correct"
    t.integer  "word_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "answers", ["word_id"], name: "index_answers_on_word_id"

  create_table "categories", force: :cascade do |t|
    t.string   "Tittle"
    t.integer  "Number_Of_Question"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "lessions", force: :cascade do |t|
    t.integer  "Result"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lessions", ["category_id"], name: "index_lessions_on_category_id"
  add_index "lessions", ["user_id"], name: "index_lessions_on_user_id"

  create_table "lessons", force: :cascade do |t|
    t.string   "Result"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lessons", ["category_id"], name: "index_lessons_on_category_id"
  add_index "lessons", ["user_id"], name: "index_lessons_on_user_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "Follower_id"
    t.integer  "Followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "answer_id"
    t.integer  "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "results", ["answer_id"], name: "index_results_on_answer_id"
  add_index "results", ["lesson_id"], name: "index_results_on_lesson_id"
  add_index "results", ["word_id"], name: "index_results_on_word_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "passw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "Content"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "words", ["category_id"], name: "index_words_on_category_id"

end
