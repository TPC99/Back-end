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

ActiveRecord::Schema.define(version: 2021_07_19_171347) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "street"
    t.string "external_number"
    t.string "internal_number"
    t.string "avenue"
    t.string "zip_code"
    t.string "city"
    t.string "locality"
    t.string "crossing"
    t.bigint "state_id"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
    t.index ["state_id"], name: "index_addresses_on_state_id"
  end

  create_table "area_works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "busines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "empresa"
    t.string "licencia"
    t.string "empleados_permitidos"
    t.string "supervisores"
    t.string "administradores"
    t.string "porcentaje_cumplimiento_de_capacitacion"
    t.string "acciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "posicion_de_trabajo"
    t.string "curso"
    t.string "fecha_inicio"
    t.string "fecha_fin"
    t.string "porcentaje_de_personas_con_curso_vigente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_employees_on_course_id"
    t.index ["employee_id"], name: "index_courses_employees_on_employee_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "no_empleado"
    t.string "nombre"
    t.string "correo"
    t.string "departamento"
    t.string "categoria"
    t.string "curso"
    t.string "porcentaje_de_curso_completado"
    t.string "porcentaje_de_cumplimiento_en_capacitacion"
    t.string "acciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licenses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.string "locaciones"
    t.string "recursos"
    t.string "estaditicas"
    t.string "acciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "instalacion"
    t.string "dptos"
    t.string "no_de_empleados"
    t.string "postal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions_users", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permissions_users_on_permission_id"
    t.index ["user_id"], name: "index_permissions_users_on_user_id"
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "donde"
    t.string "quien"
    t.string "cuando"
    t.string "que_se_vio"
    t.string "que_area"
    t.string "que_empresa"
    t.string "lugar_exacto"
    t.string "que_vio"
    t.string "que_accion"
    t.string "que_tipo"
    t.string "donde_impacta"
    t.string "potencial"
    t.string "que_tipo_de_peligro"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "puesto"
    t.string "e_mail"
    t.string "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "iso"
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "statistics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.text "password"
    t.text "password_digest"
    t.string "name"
    t.string "last_name"
    t.string "last_mother_name"
    t.string "phone"
    t.boolean "deleted", default: false
    t.bigint "type_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_user_id"], name: "index_users_on_type_user_id"
  end

  add_foreign_key "addresses", "states"
  add_foreign_key "courses_employees", "courses"
  add_foreign_key "courses_employees", "employees"
  add_foreign_key "permissions_users", "permissions"
  add_foreign_key "permissions_users", "users"
  add_foreign_key "states", "countries"
  add_foreign_key "users", "type_users"
end
