require 'csv'

Planet.delete_all
Species.delete_all
Character.delete_all

# Planets
filename = Rails.root.join("db/data/planets.csv")

puts "Loading Planets: #{filename}"

csv_data = File.read(filename)
planets = CSV.parse(csv_data, headers: true, encoding: "utf-8")

planets.each do |p|
    planet = Planet.find_or_create_by(planet_name: p["name"], diameter: p["diameter"].to_f,
                                      population: p["population"].to_i, surface_water: p["surface_water"].to_f)

    if planet && planet.valid?
        planet.attributes = {
            climate: p["climate"],
            gravity: p["gravity"],
            terrain: p["terrain"]
        }
        planet.save
        puts "Invalid planet #{p['name']}" unless planet&.valid?

    else
        puts "invalid planet #{p['name']}. #{planet.errors.full_messages.join(', ')}"
    end
end
puts "Created #{Planet.count} Planets"


# Species
filename = Rails.root.join("db/data/species.csv")

puts "Loading Species: #{filename}"

csv_data = File.read(filename)
species = CSV.parse(csv_data, headers: true, encoding: "utf-8")

species.each do |s|
    planet = Planet.find_or_create_by(planet_name: s["homeworld"])
    specie = Species.find_or_create_by(species_name: s["name"], average_height: s["average_height"].to_f,
                                        average_lifespan: s["average_lifespan"].to_i, homeworld: planet.planet_name)
  
    if specie && specie.valid?
        specie.attributes = {
            classification: s["classification"],
            skin_color: s["skin_colors"],
            hair_color: s["hair_colors"],
            eye_color: s["eye_colors"],
            language: s["language"]
        }
        specie.save
        puts "Invalid species #{s['species_name']}" unless specie&.valid?
  
    else
        puts "invalid species #{s['species_name']}. #{specie.errors.full_messages.join(', ')}"
    end
end
puts "Created #{Species.count} Species"


# Characters
filename = Rails.root.join("db/data/characters.csv")

puts "Loading Characters: #{filename}"

csv_data = File.read(filename)
characters = CSV.parse(csv_data, headers: true, encoding: "utf-8")

characters.each do |c|
    species = Species.find_or_create_by(species_name: c["species"])
    planet = Planet.find_or_create_by(planet_name: c["homeworld"])
    character = Character.find_or_create_by(character_name: c["name"], height: c["height"].to_f, mass: c["mass"].to_f,
                                          species: species, homeworld: planet.planet_name)

    if character && character.valid?
        character.attributes = {
            hair_color: c["hair_color"],
            skin_color: c["skin_color"],
            eye_color: c["eye_color"],
            birth_year: c["birth_year"],
            gender: c["gender"],
    }
    character.save
    puts "Invalid character #{c['character_name']}" unless character&.valid?

    else
        puts "invalid character #{c['character_name']}. #{character.errors.full_messages.join(', ')}"
    end
end
puts "Created #{Character.count} Characters"
