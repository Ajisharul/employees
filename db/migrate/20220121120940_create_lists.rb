class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :employee_name
      t.string :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
