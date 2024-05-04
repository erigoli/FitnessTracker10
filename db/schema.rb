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

ActiveRecord::Schema[7.1].define(version: 2024_05_03_003443) do
  create_table "ages", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ages_on_user_id"
  end

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

  create_table "heights", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_heights_on_user_id"
  end

  create_table "runninggoals", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_runninggoals_on_user_id"
  end

  create_table "runnings", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_runnings_on_user_id"
  end

  create_table "sleepinggoals", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sleepinggoals_on_user_id"
  end

  create_table "sleepings", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sleepings_on_user_id"
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

  create_table "weightlosses", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weightlosses_on_user_id"
  end

  create_table "weightlossgoals", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weightlossgoals_on_user_id"
  end

  create_table "weights", force: :cascade do |t|
    t.integer "value"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_weights_on_user_id"
  end

  add_foreign_key "ages", "users"
  add_foreign_key "calories", "users"
  add_foreign_key "cardios", "users"
  add_foreign_key "heights", "users"
  add_foreign_key "runninggoals", "users"
  add_foreign_key "runnings", "users"
  add_foreign_key "sleepinggoals", "users"
  add_foreign_key "sleepings", "users"
  add_foreign_key "steps", "users"
  add_foreign_key "strengths", "users"
  add_foreign_key "stretchings", "users"
  add_foreign_key "treadmills", "users"
  add_foreign_key "water_intakes", "users"
  add_foreign_key "weightlosses", "users"
  add_foreign_key "weightlossgoals", "users"
  add_foreign_key "weights", "users"
end
