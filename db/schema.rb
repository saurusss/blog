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

ActiveRecord::Schema.define(version: 2019_11_21_061754) do

  create_table "aaa", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "id"
    t.text "mgmtno"
    t.text "storename"
    t.text "username"
    t.text "devicetype"
    t.text "purpose"
    t.text "manufacture"
    t.text "modelno"
    t.text "serialno"
    t.text "description"
    t.text "ram"
    t.text "disk"
    t.text "os"
    t.text "hostname"
    t.text "ipaddr"
    t.text "gateway"
    t.text "mac_wire"
    t.text "mac_wireless"
    t.datetime "date_buy"
    t.datetime "date_produce"
    t.text "amt_buy"
    t.text "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assetlists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "mgmtno"
    t.bigint "store_id"
    t.string "username"
    t.string "devicetype"
    t.string "purpose"
    t.string "manufacture"
    t.string "modelno"
    t.string "serialno"
    t.string "description"
    t.string "ram"
    t.string "disk"
    t.string "os"
    t.string "hostname"
    t.string "ipaddr"
    t.string "gateway"
    t.string "mac_wire"
    t.string "mac_wireless"
    t.date "date_buy"
    t.date "date_produce"
    t.integer "amt_buy"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_assetlists_on_store_id"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ds_tbl", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "id"
    t.integer "Index_No"
    t.text "No"
    t.text "Gradu"
    t.text "Name"
    t.text "Company"
    t.text "Company_Part"
    t.text "Company_Level"
    t.text "Company_Address"
    t.text "Company_Tel"
    t.text "Home_Address"
    t.text "Home_Tel"
    t.text "Home_Mobile"
    t.text "Confirm"
  end

  create_table "dslists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Index_no"
    t.string "g_no"
    t.string "g_year"
    t.string "name"
    t.string "company"
    t.string "company_part"
    t.string "company_title"
    t.string "company_address"
    t.string "company_tel"
    t.string "home_address"
    t.string "home_tel"
    t.string "mobile"
    t.string "confirm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dstbl_s", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "id"
    t.integer "Index_No"
    t.text "No"
    t.text "Gradu"
    t.text "Name"
    t.text "Company"
    t.text "Company_Part"
    t.text "Company_Level"
    t.text "Company_Address"
    t.text "Company_Tel"
    t.text "Home_Address"
    t.text "Home_Tel"
    t.text "Home_Mobile"
    t.text "Confirm"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "storelist_191121", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "id"
    t.text "group"
    t.text "storecode"
    t.text "store_ab"
    t.text "storename"
    t.text "extension"
    t.text "address"
    t.text "telno"
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "group"
    t.string "storecode"
    t.string "store_ab"
    t.string "storename"
    t.string "extension"
    t.text "address"
    t.string "telno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assetlists", "stores"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "users"
end
