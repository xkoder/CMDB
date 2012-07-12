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

ActiveRecord::Schema.define(:version => 20120712201553) do

  create_table "admins", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "email_personal"
    t.string   "email_other"
    t.integer  "phone"
    t.integer  "mobile"
    t.integer  "phone_other"
    t.integer  "pager"
    t.integer  "fax"
    t.string   "cn_id"
    t.integer  "ps_id"
    t.string   "role"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applics", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.string   "version"
    t.string   "description"
    t.string   "maintwin_day"
    t.integer  "start_time"
    t.integer  "end_time"
    t.integer  "server_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "operations_manager"
    t.string   "application_sponser"
    t.string   "application_coordinator"
    t.string   "customer"
    t.integer  "noof_customers"
    t.integer  "department_id"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "name"
    t.string   "serial_number"
    t.string   "service_impact"
    t.string   "manufacturer"
    t.string   "model"
    t.string   "device_type"
    t.string   "cpu_type"
    t.string   "cpu_speed"
    t.string   "installation_year"
    t.string   "status"
    t.string   "operating_system"
    t.string   "memory"
    t.string   "Device_Notes"
    t.string   "asset_tag"
    t.date     "aquisition_date"
    t.integer  "po_number"
    t.integer  "requisition_number"
    t.string   "sar_system_handle"
    t.integer  "sa_id"
    t.integer  "location_id"
    t.integer  "server_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "campus"
    t.string   "building"
    t.string   "room"
    t.string   "rack"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintainenceactivities", :force => true do |t|
    t.string   "title"
    t.time     "start_date"
    t.time     "end_date"
    t.string   "description"
    t.string   "state"
    t.integer  "applic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", :force => true do |t|
    t.string   "name"
    t.integer  "primary_admin_id"
    t.integer  "secondary_admin_id"
    t.string   "email"
    t.string   "status"
    t.text     "notes"
    t.string   "hpsim_monitered"
    t.string   "spectrum_monitered"
    t.time     "date_last_reviewed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
