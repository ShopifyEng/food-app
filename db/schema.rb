# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_25_173728) do

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "place_of_origin"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nutritions", force: :cascade do |t|
    t.bigint "food_id"
    t.string "serving_size"
    t.string "calories"
    t.string "total_fat"
    t.string "trans_fat"
    t.string "saturated_fat"
    t.string "cholesterol"
    t.string "sodium"
    t.string "potassium"
    t.string "total_carbohydrate"
    t.string "dietary_fiber"
    t.string "sugars"
    t.string "protein"
    t.string "vitamin_a"
    t.string "vitamin_c"
    t.string "calcium"
    t.string "iron"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
