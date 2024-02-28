class Planet < ApplicationRecord
    has_many :characters, foreign_key: 'homeworld', primary_key: 'planet_name'
    has_many :species, foreign_key: 'homeworld', primary_key: 'planet_name'

    validates :planet_name, presence: true, uniqueness: true
    validates :diameter, :surface_water, numericality: true
    validates :population, numericality: {only_integer: true}
end
