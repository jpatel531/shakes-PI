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

ActiveRecord::Schema.define(version: 20140818123743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: true do |t|
    t.integer  "work_id"
    t.integer  "section"
    t.integer  "chapter"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["work_id"], name: "index_chapters_on_work_id", using: :btree

  create_table "characters", force: true do |t|
    t.text     "name"
    t.string   "abbrev"
    t.text     "description"
    t.integer  "speech_count"
    t.integer  "work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "charid"
  end

  add_index "characters", ["work_id"], name: "index_characters_on_work_id", using: :btree

  create_table "paragraphs", force: true do |t|
    t.integer  "work_id"
    t.integer  "character_id"
    t.text     "plaintext"
    t.text     "phonetictext"
    t.text     "paragraph_type"
    t.text     "stemtext"
    t.integer  "section"
    t.integer  "chapter"
    t.integer  "word_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "paragraph_num"
    t.integer  "char_count"
  end

  add_index "paragraphs", ["character_id"], name: "index_paragraphs_on_character_id", using: :btree
  add_index "paragraphs", ["work_id"], name: "index_paragraphs_on_work_id", using: :btree

  create_table "word_forms", force: true do |t|
    t.text     "plaintext"
    t.text     "phonetictext"
    t.text     "stemtext"
    t.integer  "occurences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: true do |t|
    t.string   "title"
    t.text     "long_title"
    t.integer  "year"
    t.string   "genre_type"
    t.text     "notes"
    t.string   "source"
    t.integer  "total_words"
    t.integer  "total_paragraphs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "workid"
  end

end
