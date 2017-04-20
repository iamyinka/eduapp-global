class Doc < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true

	mount_uploader :document, DocumentUploader
end
