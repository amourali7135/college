# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_07_152738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "essay_question_one"
    t.text "first_essay"
    t.string "essay_question_two"
    t.text "second_essay"
    t.string "essay_question_three"
    t.text "third_essay"
    t.integer "status"
    t.bigint "program_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["program_id"], name: "index_applications_on_program_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "title"
    t.string "headline"
    t.text "description"
    t.boolean "rolling", null: false
    t.date "application_due_date"
    t.string "location"
    t.boolean "remote", null: false
    t.integer "spots"
    t.text "requirements"
    t.string "length"
    t.integer "minimum_age"
    t.boolean "visa_sponsorship", null: false
    t.date "start_date"
    t.boolean "virtual_components", null: false
    t.boolean "housing_provided", null: false
    t.boolean "essay_one_needed", null: false
    t.boolean "essay_two_needed", null: false
    t.boolean "essay_three_needed", null: false
    t.string "essay_question_one"
    t.string "essay_question_two"
    t.string "essay_question_three"
    t.boolean "salary", null: false
    t.integer "salary_paid"
    t.integer "cost"
    t.boolean "certificate_awarded", null: false
    t.boolean "nationals_only", null: false
    t.boolean "active", null: false
    t.string "time_requirement"
    t.boolean "job_guaranteed", null: false
    t.string "category"
    t.boolean "relocation_assistance", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_programs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "employer", default: false, null: false
    t.boolean "admin", default: false, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "organization_name"
    t.string "location"
    t.text "bio"
    t.integer "age"
    t.text "goal"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "programs"
  add_foreign_key "applications", "users"
  add_foreign_key "programs", "users"
end
