# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_13_001358) do
  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.float "height"
    t.float "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.string "homeworld"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "planet_name"
    t.float "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.float "surface_water"
    t.integer "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "species_name"
    t.string "classification"
    t.float "average_height"
    t.string "skin_color"
    t.string "hair_color"
    t.string "eye_color"
    t.integer "average_lifespan"
    t.string "language"
    t.string "homeworld"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
