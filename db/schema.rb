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

ActiveRecord::Schema[7.1].define(version: 2024_05_02_185958) do
  create_table "calories", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_calories_on_user_id"
  end

  create_table "cardios", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cardios_on_user_id"
  end

  create_table "friends", force: :cascade do |t|
    t.string "first"
    t.string "last"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_steps_on_user_id"
  end

  create_table "strengths", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_strengths_on_user_id"
  end

  create_table "stretchings", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stretchings_on_user_id"
  end

  create_table "treadmills", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_treadmills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_intakes", force: :cascade do |t|
    t.decimal "gallons"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_water_intakes_on_user_id"
  end

  add_foreign_key "calories", "users"
  add_foreign_key "cardios", "users"
  add_foreign_key "steps", "users"
  add_foreign_key "strengths", "users"
  add_foreign_key "stretchings", "users"
  add_foreign_key "treadmills", "users"
  add_foreign_key "water_intakes", "users"
end
