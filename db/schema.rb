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

ActiveRecord::Schema.define(version: 20170619130257) do

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_albums_on_collection_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "path"
    t.datetime "date_time_original"
    t.integer "width"
    t.integer "height"
    t.float "exposure_time"
    t.float "f_number"
    t.string "model"
    t.string "make"
    t.string "copyright"
    t.integer "iso_speed_ratings"
    t.float "aperture_value"
    t.float "max_aperture_value"
    t.float "focal_length"
    t.integer "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_photos_on_album_id"
  end

end
