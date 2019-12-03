ActiveRecord::Schema.define(version: 2019_12_02_192302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.string "list"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_agendas_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task"
    t.string "heading"
    t.bigint "agenda_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agenda_id"], name: "index_tasks_on_agenda_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "agendas", "users"
  add_foreign_key "tasks", "agendas"
end