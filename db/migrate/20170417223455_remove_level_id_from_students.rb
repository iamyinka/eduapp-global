class RemoveLevelIdFromStudents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :students, :level_id
  	remove_column :students, :course_id
  end
end
