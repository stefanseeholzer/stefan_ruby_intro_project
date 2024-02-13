class Planet < ApplicationRecord
    has_many :characters
    has_many :species
end
