
ActiveRecord::Schema.define(version: 2022_01_21_120940) 

create_table "employee", force: :cascade do |t|
    t.string "employee_name"
    t.string "age"
    t.string "gender"
    t.string "designation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
