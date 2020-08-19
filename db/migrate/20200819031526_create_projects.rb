class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :product
      t.string :name
      t.string :code
      t.string :number
      t.string :plant
      t.string :volume
      t.string :ratio
      t.string :life
      t.string :sop
      t.string :eop
      t.string :project_manger
      t.string :vehicle_id

      t.timestamps
    end
  end
end
