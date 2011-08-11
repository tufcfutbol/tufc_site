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

ActiveRecord::Schema.define(:version => 20110810224710) do

  create_table "games", :force => true do |t|
    t.datetime "date"
    t.string   "against"
    t.integer  "tufc_goals"
    t.integer  "against_goals"
    t.boolean  "league_game"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", :force => true do |t|
    t.text     "entry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authored_by"
  end

  create_table "players", :force => true do |t|
    t.boolean  "first_team"
    t.string   "preffered_position"
    t.integer  "rating"
    t.string   "hometown"
    t.text     "notes"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "stats", :force => true do |t|
    t.integer  "player_id"
    t.string   "season"
    t.integer  "year"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "yellow_cards"
    t.integer  "red_cards"
    t.integer  "games_played"
    t.string   "eboard_position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
