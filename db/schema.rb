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

ActiveRecord::Schema.define(version: 20180419142025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "chapters_id"
    t.index ["chapters_id"], name: "index_bookmarks_on_chapters_id"
    t.index ["users_id"], name: "index_bookmarks_on_users_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "pages"
    t.bigint "tomes_id"
    t.index ["tomes_id"], name: "index_chapters_on_tomes_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commentary"
    t.integer "rating"
    t.bigint "chapters_id"
    t.bigint "users_id"
    t.index ["chapters_id"], name: "index_comments_on_chapters_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "mangas_id"
    t.index ["mangas_id"], name: "index_favorites_on_mangas_id"
    t.index ["users_id"], name: "index_favorites_on_users_id"
  end

  create_table "mangas", force: :cascade do |t|
    t.string "name"
    t.string "athor"
    t.string "synopsys"
    t.string "photo"
    t.integer "nb_tome"
  end

  create_table "tomes", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.integer "nb_chapter"
    t.bigint "mangas_id"
    t.index ["mangas_id"], name: "index_tomes_on_mangas_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
  end

  add_foreign_key "bookmarks", "chapters", column: "chapters_id"
  add_foreign_key "bookmarks", "users", column: "users_id"
  add_foreign_key "chapters", "tomes", column: "tomes_id"
  add_foreign_key "comments", "chapters", column: "chapters_id"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "favorites", "mangas", column: "mangas_id"
  add_foreign_key "favorites", "users", column: "users_id"
  add_foreign_key "tomes", "mangas", column: "mangas_id"
end
