class CreatePlanets < ActiveRecord::Migration[7.1]
  def change
    create_table :planets do |t|
      t.string :planet_name
      t.float :diameter
      t.string :climate
      t.string :gravity
      t.string :terrain
      t.float :surface_water
      t.integer :population

      t.timestamps
    end
  end
end
