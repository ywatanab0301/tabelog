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

ActiveRecord::Schema.define(version: 20180920154922) do

  create_table "budgets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_budgets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "review_id"
    t.integer  "budget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_review_budgets_on_budget_id", using: :btree
    t.index ["review_id"], name: "index_review_budgets_on_review_id", using: :btree
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                    null: false
    t.integer  "lunch_dinner",               null: false
    t.integer  "rate",                       null: false
    t.integer  "food_rate",                  null: false
    t.integer  "service_rate",               null: false
    t.integer  "atmosphere",                 null: false
    t.integer  "cp_rate",                    null: false
    t.string   "title",                      null: false
    t.text     "text",         limit: 65535, null: false
    t.datetime "visit_day",                  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.float    "drink_rate",   limit: 24,    null: false
    t.string   "pic1"
    t.string   "pic2"
    t.string   "pic3"
    t.string   "pic4"
    t.string   "pic5"
    t.integer  "shop_id"
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "shop_budgets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "shop_id"
    t.integer  "budget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_shop_budgets_on_budget_id", using: :btree
    t.index ["shop_id"], name: "index_shop_budgets_on_shop_id", using: :btree
  end

  create_table "shop_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "shop_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_shop_genres_on_genre_id", using: :btree
    t.index ["shop_id"], name: "index_shop_genres_on_shop_id", using: :btree
  end

  create_table "shop_prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "shop_id"
    t.integer  "prefecture_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["prefecture_id"], name: "index_shop_prefectures_on_prefecture_id", using: :btree
    t.index ["shop_id"], name: "index_shop_prefectures_on_shop_id", using: :btree
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "shop_name",                         null: false
    t.string   "shop_name_f",                       null: false
    t.integer  "phone_number",                      null: false
    t.string   "city_address",                      null: false
    t.string   "building"
    t.text     "map",                 limit: 65535
    t.text     "hours",               limit: 65535
    t.string   "closed_day"
    t.integer  "reservation"
    t.integer  "payment"
    t.integer  "private_room"
    t.integer  "capacity"
    t.integer  "chartered"
    t.integer  "parking"
    t.integer  "smorking"
    t.integer  "dish"
    t.integer  "drink"
    t.integer  "nomiho"
    t.integer  "course"
    t.string   "service_charge"
    t.integer  "location"
    t.integer  "facility_atmosphere"
    t.integer  "kids"
    t.string   "homepage"
    t.string   "official_account1"
    t.string   "official_account2"
    t.string   "official_account3"
    t.integer  "open_date"
    t.string   "others"
    t.string   "dress_code"
    t.integer  "confirmation_method"
    t.text     "comment",             limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.text     "prtext",              limit: 65535
    t.string   "pic1"
    t.string   "pic2"
    t.string   "pic3"
    t.string   "pic4"
    t.string   "pic5"
    t.index ["shop_name"], name: "index_shops_on_shop_name", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nickname",                            null: false
    t.string   "avatar"
    t.string   "background_image"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["nickname"], name: "index_users_on_nickname", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "review_budgets", "budgets"
  add_foreign_key "review_budgets", "reviews"
  add_foreign_key "reviews", "users"
  add_foreign_key "shop_budgets", "budgets"
  add_foreign_key "shop_budgets", "shops"
  add_foreign_key "shop_genres", "genres"
  add_foreign_key "shop_genres", "shops"
  add_foreign_key "shop_prefectures", "prefectures"
  add_foreign_key "shop_prefectures", "shops"
end
