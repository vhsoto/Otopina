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

ActiveRecord::Schema.define(version: 20150122000806) do

  create_table "adverse_events", force: :cascade do |t|
    t.datetime "time"
    t.string   "reason_admission"
    t.string   "description"
    t.boolean  "pregnant"
    t.integer  "event_id"
    t.integer  "patient_id"
    t.integer  "branch_office_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adverse_events", ["branch_office_id"], name: "index_adverse_events_on_branch_office_id"
  add_index "adverse_events", ["event_id"], name: "index_adverse_events_on_event_id"
  add_index "adverse_events", ["patient_id"], name: "index_adverse_events_on_patient_id"

  create_table "ae_drugs", force: :cascade do |t|
    t.float    "drug_price"
    t.float    "drug_subtotal"
    t.datetime "drug_time"
    t.integer  "qty"
    t.integer  "adverse_event_id"
    t.integer  "drug_id"
    t.integer  "service_id"
    t.integer  "charge_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ae_drugs", ["adverse_event_id"], name: "index_ae_drugs_on_adverse_event_id"
  add_index "ae_drugs", ["charge_id"], name: "index_ae_drugs_on_charge_id"
  add_index "ae_drugs", ["drug_id"], name: "index_ae_drugs_on_drug_id"
  add_index "ae_drugs", ["service_id"], name: "index_ae_drugs_on_service_id"

  create_table "ae_procedures", force: :cascade do |t|
    t.float    "procedure_price"
    t.float    "procedure_subtotal"
    t.datetime "procedure_time"
    t.integer  "procedure_id"
    t.integer  "service_id"
    t.integer  "adverse_event_id"
    t.integer  "charge_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "ae_procedures", ["adverse_event_id"], name: "index_ae_procedures_on_adverse_event_id"
  add_index "ae_procedures", ["charge_id"], name: "index_ae_procedures_on_charge_id"
  add_index "ae_procedures", ["procedure_id"], name: "index_ae_procedures_on_procedure_id"
  add_index "ae_procedures", ["service_id"], name: "index_ae_procedures_on_service_id"

  create_table "branch_offices", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "Detail"
    t.integer  "event_category_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "events", ["event_category_id"], name: "index_events_on_event_category_id"

  create_table "hospitalization_days", force: :cascade do |t|
    t.integer  "qty"
    t.float    "price"
    t.float    "subtotal"
    t.date     "date"
    t.integer  "adverse_event_id"
    t.integer  "service_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "hospitalization_days", ["adverse_event_id"], name: "index_hospitalization_days_on_adverse_event_id"
  add_index "hospitalization_days", ["service_id"], name: "index_hospitalization_days_on_service_id"

  create_table "hum_res_assistances", force: :cascade do |t|
    t.string   "name"
    t.integer  "qty"
    t.float    "price"
    t.datetime "time"
    t.float    "subtotal"
    t.integer  "adverse_event_id"
    t.integer  "service_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "hum_res_assistances", ["adverse_event_id"], name: "index_hum_res_assistances_on_adverse_event_id"
  add_index "hum_res_assistances", ["service_id"], name: "index_hum_res_assistances_on_service_id"

  create_table "patients", force: :cascade do |t|
    t.string   "document_type"
    t.string   "document_number"
    t.string   "name"
    t.string   "lastname"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
