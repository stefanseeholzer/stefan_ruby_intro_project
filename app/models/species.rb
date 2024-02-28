class Species < ApplicationRecord
    belongs_to :planet, foreign_key: "homeworld", primary_key: "planet_name"
    has_many :characters, foreign_key: 'species', primary_key: 'species_name'

    validates :species_name, presence: true, uniqueness: true
    validates :average_height, numericality: true
    validates :average_lifespan, numericality: {only_integer: true}
end
