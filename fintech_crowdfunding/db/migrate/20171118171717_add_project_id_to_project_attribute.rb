class AddProjectIdToProjectAttribute < ActiveRecord::Migration[5.1]
  def change
    add_column :project_attributes, :project_id, :integer
  end
end
