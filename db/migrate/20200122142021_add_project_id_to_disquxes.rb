class AddProjectIdToDisquxes < ActiveRecord::Migration[6.0]
  def change
    add_column :disquxes, :project_id, :integer
  end
end
