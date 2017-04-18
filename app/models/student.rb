class Student < ApplicationRecord

	validates :fname, presence: true, length: { minimum: 3 }
	validates :lname, presence: true, length: { minimum: 5 }


	validates :email, :presence => true, :uniqueness => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	validates :phone, numericality: { only_integer: true }, length: { minimum: 10 }

	def to_s
		"#{fname} #{lname}"
	end
end
