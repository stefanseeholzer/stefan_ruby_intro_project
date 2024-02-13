class Character < ApplicationRecord
    belongs_to :planet
    belongs_to :species

    validates :character_name, presence: true, uniqueness: true
    validates :height, :mass, numericality: true
end
