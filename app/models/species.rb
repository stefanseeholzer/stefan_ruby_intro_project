class Species < ApplicationRecord
    belongs_to :planet
    has_many :characters

    validates :species_name, presence: true, uniqueness: true
    validates :average_height, numericality: true
    validates :average_lifespan, numericality: {only_integer: true}
end
