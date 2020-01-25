class AddDisquxIdToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :disqux_id, :integer
  end
end
