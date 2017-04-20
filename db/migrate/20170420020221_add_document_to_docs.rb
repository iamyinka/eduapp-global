class AddDocumentToDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :docs, :document, :string
  end
end
