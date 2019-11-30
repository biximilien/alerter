# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_160_809_183_615) do
  create_table 'alerts', force: :cascade do |t|
    t.integer 'source_id', null: false
    t.string 'source_type', null: false
    t.integer 'target_id', null: false
    t.string 'target_type', null: false
    t.string 'key', default: '', null: false
    t.integer 'object_id'
    t.string 'object_type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'model_mocks', force: :cascade do |t|
    t.string 'name'
    t.text 'content'
    t.boolean 'stuffable'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
