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

ActiveRecord::Schema.define(version: 20180327065034) do

  create_table "lunch_posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "shop_name"
    t.string "title", null: false
    t.integer "price", null: false
    t.string "image_path", null: false
    t.boolean "is_active", default: true, null: false
    t.bigint "prefecture_id"
    t.bigint "station_id"
    t.bigint "user_id"
    t.index ["prefecture_id"], name: "index_lunch_posts_on_prefecture_id"
    t.index ["station_id"], name: "index_lunch_posts_on_station_id"
    t.index ["user_id"], name: "index_lunch_posts_on_user_id"
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  create_table "stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "prefecture_id"
    t.index ["prefecture_id"], name: "index_stations_on_prefecture_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "image_path", null: false
    t.bigint "prefecture_id"
    t.bigint "station_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["prefecture_id"], name: "index_users_on_prefecture_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["station_id"], name: "index_users_on_station_id"
  end

  add_foreign_key "lunch_posts", "prefectures"
  add_foreign_key "lunch_posts", "stations"
  add_foreign_key "lunch_posts", "users"
  add_foreign_key "stations", "prefectures"
  add_foreign_key "users", "prefectures"
  add_foreign_key "users", "stations"
end
