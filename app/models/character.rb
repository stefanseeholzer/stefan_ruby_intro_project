class Character < ApplicationRecord
    belongs_to :planet, foreign_key: "homeworld", primary_key: "planet_name"
    belongs_to :species, foreign_key: "species", primary_key: "species_name"

    validates :character_name, presence: true, uniqueness: true
    validates :height, :mass, numericality: true
end
