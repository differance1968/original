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

ActiveRecord::Schema.define(version: 20170217024454) do

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "answer_at"
    t.boolean  "result"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "type"
    t.string   "genre"
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_questions", force: :cascade do |t|
    t.string   "question_id"
    t.string   "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grammar_selects", force: :cascade do |t|
    t.string   "choice"
    t.boolean  "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_grammars", force: :cascade do |t|
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_words", force: :cascade do |t|
    t.string   "word"
    t.string   "meaning"
    t.boolean  "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "questionable_type"
    t.integer  "questionable_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "questions", ["questionable_id"], name: "index_questions_on_questionable_id"
  add_index "questions", ["questionable_type"], name: "index_questions_on_questionable_type"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "emails"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
