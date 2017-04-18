class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.integer :level_id
      t.integer :course_id
      t.string :nationality
      t.string :email
      t.integer :phone
      t.string :countryloc

      t.timestamps
    end
  end
end
