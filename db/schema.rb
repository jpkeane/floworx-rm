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

ActiveRecord::Schema.define(version: 2018_09_20_000305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "slug", limit: 5, null: false
    t.string "name", limit: 100, null: false
    t.string "code", limit: 5, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_clients_on_slug"
  end

  create_table "engagements", force: :cascade do |t|
    t.string "slug", null: false
    t.string "code", null: false
    t.string "name", null: false
    t.bigint "project_id"
    t.bigint "role_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_engagements_on_project_id"
    t.index ["role_id"], name: "index_engagements_on_role_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "slug", limit: 100, null: false
    t.string "name", limit: 100, null: false
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "slug", limit: 11, null: false
    t.string "name", limit: 100, null: false
    t.string "code", limit: 5, null: false
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["code"], name: "index_projects_on_code"
    t.index ["slug"], name: "index_projects_on_slug"
  end

  create_table "roles", force: :cascade do |t|
    t.string "slug", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "slug", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_resource_roles", force: :cascade do |t|
    t.bigint "staff_resource_id"
    t.bigint "role_id"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_staff_resource_roles_on_role_id"
    t.index ["staff_resource_id"], name: "index_staff_resource_roles_on_staff_resource_id"
  end

  create_table "staff_resource_skills", force: :cascade do |t|
    t.bigint "staff_resource_id"
    t.bigint "skill_id"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_staff_resource_skills_on_skill_id"
    t.index ["staff_resource_id"], name: "index_staff_resource_skills_on_staff_resource_id"
  end

  create_table "staff_resources", force: :cascade do |t|
    t.string "slug", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "display_name"
    t.string "email_address"
    t.string "bio_url"
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_staff_resources_on_grade_id"
  end

  create_table "user_remember_tokens", force: :cascade do |t|
    t.bigint "user_id"
    t.string "remember_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_remember_tokens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "password_reset_token"
    t.datetime "password_reset_token_at"
    t.string "slug", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "engagements", "projects"
  add_foreign_key "engagements", "roles"
  add_foreign_key "projects", "clients"
  add_foreign_key "staff_resource_roles", "roles"
  add_foreign_key "staff_resource_roles", "staff_resources"
  add_foreign_key "staff_resource_skills", "skills"
  add_foreign_key "staff_resource_skills", "staff_resources"
  add_foreign_key "staff_resources", "grades"
  add_foreign_key "user_remember_tokens", "users"
end
