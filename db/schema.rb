# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150323221015) do

  create_table "batches", force: :cascade do |t|
    t.string   "brew_date"
    t.string   "bottle_date"
    t.string   "image"
    t.text     "notes"
    t.integer  "user_id_id"
    t.integer  "recipe_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "batches", ["recipe_id_id"], name: "index_batches_on_recipe_id_id"
  add_index "batches", ["user_id_id"], name: "index_batches_on_user_id_id"

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "flav_profile"
    t.string   "recipe_type"
    t.string   "brewery_name"
    t.text     "description"
    t.string   "label"
    t.integer  "user_id_id"
    t.integer  "style_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "recipes", ["style_id_id"], name: "index_recipes_on_style_id_id"
  add_index "recipes", ["user_id_id"], name: "index_recipes_on_user_id_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "content"
    t.integer  "user_id_id"
    t.integer  "batch_id_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["batch_id_id"], name: "index_reviews_on_batch_id_id"
  add_index "reviews", ["user_id_id"], name: "index_reviews_on_user_id_id"

  create_table "styles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "uniques", force: :cascade do |t|
    t.integer  "number"
    t.integer  "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "uniques", ["batch_id"], name: "index_uniques_on_batch_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
