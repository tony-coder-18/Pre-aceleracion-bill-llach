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

ActiveRecord::Schema.define(version: 2022_04_30_235950) do

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personaje_producciones", force: :cascade do |t|
    t.integer "personaje_id", null: false
    t.integer "produccion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personaje_id"], name: "index_personaje_producciones_on_personaje_id"
    t.index ["produccion_id"], name: "index_personaje_producciones_on_produccion_id"
  end

  create_table "personajes", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.integer "peso"
    t.text "historia"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "producciones", force: :cascade do |t|
    t.string "titulo"
    t.date "fecha_creacion"
    t.integer "calificacion"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "genero_id", null: false
    t.index ["genero_id"], name: "index_producciones_on_genero_id"
  end

  add_foreign_key "personaje_producciones", "personajes"
  add_foreign_key "personaje_producciones", "producciones"
  add_foreign_key "producciones", "generos"
end
