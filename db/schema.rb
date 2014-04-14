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

ActiveRecord::Schema.define(version: 20140414081424) do

  create_table "ata_chapters", force: true do |t|
    t.string   "chapter_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flight_occurences", force: true do |t|
    t.string   "fo_no"
    t.string   "report_no"
    t.string   "who_report"
    t.string   "who_update"
    t.string   "dca_reportable_incident"
    t.string   "status_report"
    t.string   "person_reporting"
    t.string   "position"
    t.string   "sub_report"
    t.string   "on_behalf"
    t.string   "ac_type"
    t.string   "ac_registration"
    t.date     "occurence_date"
    t.time     "occurence_time"
    t.string   "human_factor"
    t.string   "operation_base"
    t.string   "location_not_base"
    t.string   "reportable_occurence"
    t.string   "incident_accident"
    t.string   "ata_chapter"
    t.string   "ata_section"
    t.string   "death_injuries_damage"
    t.string   "report_manager"
    t.string   "delegate"
    t.string   "title_of_occurence"
    t.text     "description_occurence"
    t.text     "correction"
    t.text     "root_cause"
    t.text     "preventive_plan"
    t.string   "regulatory_authorities"
    t.date     "date_reported"
    t.string   "tech_log"
    t.string   "commander"
    t.string   "co_pilot"
    t.string   "other_crew1"
    t.string   "other_crew2"
    t.string   "pilot_license"
    t.string   "co_pilot_license"
    t.string   "flight"
    t.string   "route_from"
    t.string   "route_to"
    t.string   "flight_type"
    t.string   "nature_type"
    t.string   "returned_to_base"
    t.string   "phase_of_flight"
    t.string   "diverted_to"
    t.string   "flight_rule"
    t.string   "flight_condition"
    t.string   "time_of_day"
    t.string   "other_describe"
    t.string   "attitude"
    t.string   "height"
    t.string   "flight_level"
    t.string   "predictation"
    t.string   "icing"
    t.string   "oat"
    t.string   "visibility_distance"
    t.string   "taf"
    t.string   "metar"
    t.string   "number_of_passengers"
    t.string   "have_noticed"
    t.string   "other_info"
    t.string   "inform_who"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nature_flights", force: true do |t|
    t.string   "nature_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phase_flights", force: true do |t|
    t.string   "phase_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "report_no"
    t.string   "who_report"
    t.string   "who_update"
    t.string   "dca_reportable_incident"
    t.string   "status_report"
    t.string   "person_reporting"
    t.string   "position"
    t.string   "sub_report"
    t.string   "on_behalf"
    t.string   "ac_type"
    t.string   "ac_registration"
    t.date     "occurence_date"
    t.time     "occurence_time"
    t.string   "human_factor"
    t.string   "operation_base"
    t.string   "location_not_base"
    t.string   "reportable_occurence"
    t.string   "incident_accident"
    t.string   "ata_chapter"
    t.string   "ata_section"
    t.string   "death_injuries_damage"
    t.string   "report_manager"
    t.string   "delegate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "position"
    t.string   "hashed_password"
    t.string   "email"
    t.string   "division"
    t.string   "business_unit"
    t.string   "base"
    t.string   "role"
    t.string   "is_pilot"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
