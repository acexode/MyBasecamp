class CreateDisquxes < ActiveRecord::Migration[6.0]
  def change
    create_table :disquxes do |t|
      t.string :title

      t.timestamps
    end
  end
end
