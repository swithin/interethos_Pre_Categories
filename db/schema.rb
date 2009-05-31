# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 610) do

  create_table "beings", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "validation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beings_groups", :force => true do |t|
    t.integer  "group_id"
    t.integer  "being_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beings_happenings", :force => true do |t|
    t.integer  "being_id"
    t.integer  "happening_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beings_issues", :force => true do |t|
    t.integer  "being_id"
    t.integer  "issue_id"
    t.integer  "passion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "privacy"
    t.integer  "realm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_happenings", :force => true do |t|
    t.integer  "group_id"
    t.integer  "happening_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "happenings", :force => true do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "date_and_time"
    t.text     "description"
    t.integer  "realm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "happenings_issues", :force => true do |t|
    t.integer  "happening_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.string   "question_or_uri"
    t.integer  "happening_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passions", :force => true do |t|
    t.string   "name"
    t.integer  "issue_id"
    t.integer  "realm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "realms", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "validations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
