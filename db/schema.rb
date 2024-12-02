ActiveRecord::Schema.define(version: 2024_12_02_000001) do
  create_table "grades", force: :cascade do |t|
    t.integer "score"
    t.bigint "student_id"
    t.bigint "teacher_id"
    t.timestamps
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.timestamps
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.bigint "group_id"
    t.bigint "user_id"
    t.timestamps
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.timestamps
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 2
    t.timestamps
  end
end
