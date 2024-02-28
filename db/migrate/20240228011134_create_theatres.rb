class CreateTheatres < ActiveRecord::Migration[7.1]
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.float :latitude
      t.float :longitude
      t.string :description

      t.timestamps
    end
  end
end
