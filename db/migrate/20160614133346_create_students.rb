class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.integer :roll_number
      t.string :department
      t.string :email
      t.string :address
      t.string :about_me

      t.timestamps null: false
    end
  end
end
