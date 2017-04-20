class AddAgentIdToDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :docs, :agent_id, :integer
  end
end
