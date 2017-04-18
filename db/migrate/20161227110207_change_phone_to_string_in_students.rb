class ChangePhoneToStringInStudents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :students, :phone
  	add_column :students, :phone, :string
  end
end
