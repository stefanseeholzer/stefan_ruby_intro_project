class CreateSpecies < ActiveRecord::Migration[7.1]
  def change
    create_table :species do |t|
      t.string :species_name
      t.string :classification
      t.float :average_height
      t.string :skin_color
      t.string :hair_color
      t.string :eye_color
      t.integer :average_lifespan
      t.string :language
      t.string :homeworld

      t.timestamps
    end
  end
end
