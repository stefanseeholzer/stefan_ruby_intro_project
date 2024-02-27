class Planet < ApplicationRecord
    has_many :characters
    has_many :species

    validates :planet_name, presence: true, uniqueness: true
    validates :diameter, :surface_water, numericality: true
    validates :population, numericality: {only_integer: true}
end
