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

ActiveRecord::Schema.define(version: 20170713042721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "designs", force: :cascade do |t|
    t.string "price"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "title"
    t.string "description"
    t.index ["creator_id"], name: "index_designs_on_creator_id"
  end

  create_table "stars", force: :cascade do |t|
    t.bigint "design_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_stars_on_design_id"
    t.index ["user_id"], name: "index_stars_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "avatar"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "designs", "users", column: "creator_id"
end
