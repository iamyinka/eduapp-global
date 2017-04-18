class RemoveLevelFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :level, :string
  end
end
