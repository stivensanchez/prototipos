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

ActiveRecord::Schema.define(version: 20151016004851) do

  create_table "datasheets", force: :cascade do |t|
    t.string   "nombre"
    t.string   "referencia"
    t.integer  "supply_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "datasheets", ["supply_id"], name: "index_datasheets_on_supply_id"

  create_table "jodas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lotes", force: :cascade do |t|
    t.float    "cantidad"
    t.float    "valor_unitario"
    t.float    "valor_total"
    t.float    "total"
    t.integer  "variable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "numero"
    t.string   "datasheet"
    t.integer  "cantidadLote"
    t.string   "nombre"
    t.string   "unidadmedida"
  end

  add_index "lotes", ["variable_id"], name: "index_lotes_on_variable_id"

  create_table "module_works", force: :cascade do |t|
    t.float    "minutos_reales"
    t.float    "costo_minuto"
    t.float    "otros_costos"
    t.float    "costo_mano_obra"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "modulo_id"
    t.float    "manoObraPlaneada"
    t.string   "modulo"
    t.string   "moduloCreate"
  end

  add_index "module_works", ["modulo_id"], name: "index_module_works_on_modulo_id"

  create_table "modulos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "nombre"
    t.string   "medida"
    t.float    "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "variables", force: :cascade do |t|
    t.integer  "numero"
    t.string   "ficha"
    t.float    "cantidad"
    t.string   "nombre"
    t.string   "medida"
    t.float    "valor_unidad"
    t.float    "valor_total"
    t.float    "total"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "cantidadLote"
    t.integer  "datasheet_id"
  end

  add_index "variables", ["datasheet_id"], name: "index_variables_on_datasheet_id"

end
