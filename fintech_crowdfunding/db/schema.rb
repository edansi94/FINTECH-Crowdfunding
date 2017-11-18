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

ActiveRecord::Schema.define(version: 20171118181614) do

  create_table "document_attributes", force: :cascade do |t|
    t.string "documentAttributesDescriptor"
    t.integer "Document_id"
    t.integer "metadataChain"
    t.string "descriptorCode01"
    t.string "descriptorCode02"
    t.string "descriptorCode03"
    t.string "additionalValue01"
    t.string "additionalValue02"
    t.string "additionalValue03"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Document_id"], name: "index_document_attributes_on_Document_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "originatorCode"
    t.string "originatorName"
    t.string "originatorType"
    t.string "receiverCode"
    t.string "receiverName"
    t.string "receiverType"
    t.string "documentType"
    t.datetime "createdBy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "product_attributes", force: :cascade do |t|
    t.string "productAttributesDescriptor"
    t.integer "Product_id"
    t.integer "metadataChain"
    t.string "descriptorCode01"
    t.string "descriptorCode02"
    t.string "descriptorCode03"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Product_id"], name: "index_product_attributes_on_Product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "type"
    t.string "category"
    t.string "subcategory"
    t.string "amountsCurrency"
    t.float "bumSuggestedPrice"
    t.datetime "suggestedPriceDate"
    t.string "productShipping"
    t.datetime "productAvailability"
    t.integer "productMaximumQuantity"
    t.integer "productMinimumQuantity"
    t.string "productStatus"
    t.string "createdBy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_attributes", force: :cascade do |t|
    t.integer "projectAttributesId"
    t.integer "projectAttributesCode"
    t.string "projectCode"
    t.integer "metaDataChain"
    t.integer "descriptorCode01"
    t.integer "descriptorCode02"
    t.integer "descriptorCode03"
    t.string "additionalValue01"
    t.string "additionalValue02"
    t.string "additionalValue03"
    t.integer "createdBy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "projectCode"
    t.string "projectDescription"
    t.string "projectResume"
    t.string "projectStatus"
    t.datetime "projectLaunchDate"
    t.datetime "projectCloserDate"
    t.string "projectImage"
    t.string "projectCityLocation"
    t.string "projectCountryLocation"
    t.string "projectStage"
    t.string "projectKeyWords"
    t.integer "projectTeamSize"
    t.string "projectVideo"
    t.integer "projectCollectGoal"
    t.string "projectFundsCurrency"
    t.integer "projectCollectTime"
    t.integer "createdBy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_attributes_id"
  end

  create_table "user_attributes", force: :cascade do |t|
    t.string "userAttributesDescriptor"
    t.string "username"
    t.integer "metadataChain"
    t.integer "descriptorCode01"
    t.integer "descriptorCode02"
    t.integer "descriptorCode03"
    t.string "additionalValue01"
    t.string "additionalValue02"
    t.string "additionalValue03"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.index ["users_id"], name: "index_user_attributes_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
