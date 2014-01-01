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

ActiveRecord::Schema.define(:version => 20130209120827) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.boolean  "incumbent",       :default => false
    t.integer  "party_id"
    t.integer  "constituency_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "candidates", ["constituency_id"], :name => "index_candidates_on_constituency_id"
  add_index "candidates", ["party_id"], :name => "index_candidates_on_party_id"

  create_table "constituencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parties", :force => true do |t|
    t.string   "abbreviation"
    t.string   "full_name"
    t.string   "colour"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "responses", :force => true do |t|
    t.boolean  "will_vote"
    t.integer  "candidate_id"
    t.integer  "constituency_id"
    t.integer  "party_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "responses", ["candidate_id"], :name => "index_responses_on_candidate_id"
  add_index "responses", ["constituency_id"], :name => "index_responses_on_constituency_id"
  add_index "responses", ["party_id"], :name => "index_responses_on_party_id"

end
