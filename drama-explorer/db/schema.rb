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

ActiveRecord::Schema.define(version: 20180407010054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", id: :serial, force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "birthdate"
    t.text "spouse"
    t.text "birthplace"
    t.text "company"
    t.decimal "height"
    t.text "filmography"
    t.string "blood"
    t.string "weight"
    t.string "eng_name"
    t.index ["eng_name"], name: "index_actors_on_eng_name", unique: true
    t.index ["name"], name: "index_actors_on_name", unique: true
  end

  create_table "dramas", id: :serial, force: :cascade do |t|
    t.text "title"
    t.text "type"
    t.text "genre"
    t.text "director"
    t.text "actor"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "synopsis"
    t.string "eng_title"
    t.index ["eng_title"], name: "index_dramas_on_eng_title", unique: true
    t.index ["title"], name: "index_dramas_on_title", unique: true
  end

  create_table "episodes", id: :serial, force: :cascade do |t|
    t.integer "episode_num"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "filename"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "participations", id: :serial, force: :cascade do |t|
    t.integer "drama_id"
    t.integer "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_participations_on_actor_id"
    t.index ["drama_id"], name: "index_participations_on_drama_id"
  end

  create_table "seasons", id: :serial, force: :cascade do |t|
    t.integer "season_num"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "drama_id"
    t.text "url_prefix"
    t.decimal "num_total_episode"
    t.index ["drama_id"], name: "index_seasons_on_drama_id"
  end

  create_table "user_ips", id: :serial, force: :cascade do |t|
    t.text "ip"
    t.decimal "num_total_view"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "episodes", "seasons"
  add_foreign_key "participations", "actors", name: "participations_actor_id_fkey"
  add_foreign_key "participations", "dramas", name: "participations_drama_id_fkey"
  add_foreign_key "seasons", "dramas"
end
