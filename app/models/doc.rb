class Doc < ApplicationRecord
	belongs_to :agent
	validates :title, presence: true
	validates :description, presence: true

	mount_uploader :document, DocumentUploader
end
