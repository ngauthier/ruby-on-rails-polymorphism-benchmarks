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

ActiveRecord::Schema.define(:version => 20080613152104) do

  create_table "int_assoc_inds", :force => true do |t|
    t.integer  "fk"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "int_assoc_inds", ["type"], :name => "index_int_assoc_inds_on_type"

  create_table "int_assocs", :force => true do |t|
    t.integer  "fk"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "string_assoc_indices", :force => true do |t|
    t.integer  "fk"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "string_assoc_indices", ["type"], :name => "index_string_assoc_indices_on_type"

  create_table "string_assocs", :force => true do |t|
    t.integer  "fk"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
