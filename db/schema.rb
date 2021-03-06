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

ActiveRecord::Schema.define(version: 2020_04_17_124536) do

  create_table "conjuntos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contactos", force: :cascade do |t|
    t.string "contactable_type", null: false
    t.integer "contactable_id", null: false
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "celular"
    t.index ["contactable_type", "contactable_id"], name: "index_contactos_on_contactable_type_and_contactable_id"
  end

  create_table "detallespersonas", force: :cascade do |t|
    t.string "personable_type", null: false
    t.integer "personable_id", null: false
    t.string "nombre"
    t.string "apellido"
    t.string "edad"
    t.string "cedula"
    t.string "huella_digital"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personable_type", "personable_id"], name: "index_detallespersonas_on_personable_type_and_personable_id"
  end

  create_table "propiedads", force: :cascade do |t|
    t.string "propiedad_type"
    t.integer "conjunto_id", null: false
    t.integer "residente_id", null: false
    t.string "edificio"
    t.string "identificador"
    t.string "parqueaderos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conjunto_id"], name: "index_propiedads_on_conjunto_id"
    t.index ["residente_id"], name: "index_propiedads_on_residente_id"
  end

  create_table "residentes", force: :cascade do |t|
    t.boolean "principal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visitantes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "propiedads", "conjuntos"
  add_foreign_key "propiedads", "residentes"
end
