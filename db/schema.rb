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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120816153838) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "zip"
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.string   "web"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "company_description_detail_translations", :force => true do |t|
    t.integer  "company_description_detail_id"
    t.string   "locale"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "company_description_detail_translations", ["company_description_detail_id"], :name => "index_54f89f0a3c16786b8b5d32ab0ad757a15462e3ec"
  add_index "company_description_detail_translations", ["locale"], :name => "index_company_description_detail_translations_on_locale"

  create_table "company_description_details", :force => true do |t|
    t.integer  "company_description_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "company_description_translations", :force => true do |t|
    t.integer  "company_description_id"
    t.string   "locale"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "company_description_translations", ["company_description_id"], :name => "index_59bb7a4ae8fb92924ff6dccff67f97a7071d7f90"
  add_index "company_description_translations", ["locale"], :name => "index_company_description_translations_on_locale"

  create_table "company_descriptions", :force => true do |t|
    t.integer  "company_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "image_translations", :force => true do |t|
    t.integer  "image_id"
    t.string   "locale"
    t.string   "label"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "image_translations", ["image_id"], :name => "index_image_translations_on_image_id"
  add_index "image_translations", ["locale"], :name => "index_image_translations_on_locale"

  create_table "images", :force => true do |t|
    t.string   "image"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "label"
  end

  create_table "maneuver_translations", :force => true do |t|
    t.integer  "maneuver_id"
    t.string   "locale"
    t.text     "description"
    t.string   "services"
    t.string   "tagline"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "maneuver_translations", ["locale"], :name => "index_maneuver_translations_on_locale"
  add_index "maneuver_translations", ["maneuver_id"], :name => "index_maneuver_translations_on_maneuver_id"

  create_table "maneuvers", :force => true do |t|
    t.string   "name"
    t.string   "tagline"
    t.string   "year"
    t.string   "customer"
    t.string   "link"
    t.string   "services"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "maneuvers", ["name"], :name => "index_maneuvers_on_name", :unique => true

  create_table "people", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "mobile"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "person_translations", :force => true do |t|
    t.integer  "person_id"
    t.string   "locale"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "person_translations", ["locale"], :name => "index_person_translations_on_locale"
  add_index "person_translations", ["person_id"], :name => "index_person_translations_on_person_id"

end
