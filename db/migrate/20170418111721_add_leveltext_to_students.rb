class AddLeveltextToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :level, :text
  end
end
