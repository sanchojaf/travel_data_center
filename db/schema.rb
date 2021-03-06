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

ActiveRecord::Schema.define(:version => 20130901171705) do

  create_table "addresses", :force => true do |t|
    t.string   "street_address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "state_name"
    t.string   "locate_in"
    t.integer  "hotel_info_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "phone"
    t.string   "alternative_phone"
    t.string   "email"
    t.string   "fax"
    t.string   "web"
    t.string   "google_map_url"
    t.integer  "hotel_info_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "context_rates", :force => true do |t|
    t.decimal  "price",      :precision => 8, :scale => 2
    t.integer  "rate_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "context_rates_rooms", :id => false, :force => true do |t|
    t.integer "context_rate_id"
    t.integer "room_id"
  end

  create_table "hotel_infos", :force => true do |t|
    t.date     "when_built"
    t.string   "hotel_status"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "category"
    t.string   "chain"
    t.string   "check_in"
    t.string   "check_out"
    t.string   "property_type"
    t.string   "segment"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hotel_names", :force => true do |t|
    t.string   "name"
    t.string   "hotel_short_name"
    t.string   "index_name"
    t.string   "permalink"
    t.integer  "hotel_info_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "pax_contexts", :force => true do |t|
    t.integer  "context_rate_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "paxes", :force => true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.integer  "pax_context_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "range_dates", :force => true do |t|
    t.date     "start"
    t.date     "end"
    t.integer  "season_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rates", :force => true do |t|
    t.string   "name"
    t.integer  "range_date_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.integer  "hotel_info_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.integer  "hotel_info_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
