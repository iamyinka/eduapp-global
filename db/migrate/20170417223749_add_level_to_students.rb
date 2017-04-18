class AddLevelToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :level, :string
    add_column :students, :course, :string
  end
end
