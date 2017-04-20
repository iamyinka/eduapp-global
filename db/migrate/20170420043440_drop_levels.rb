class DropLevels < ActiveRecord::Migration[5.0]
  def change
  	drop_table :levels
  	drop_table :courses
  end
end
