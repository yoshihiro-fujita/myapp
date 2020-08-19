class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :image
      t.string :user_id

      t.timestamps
    end
  end
end
