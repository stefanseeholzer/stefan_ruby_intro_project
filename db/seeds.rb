require 'csv'

Planet.delete_all
Species.delete_all
Character.delete_all

filename = Rails.root.join("db/data/planets.csv")

puts "Loading Planets: #{filename}"

csv_data = File.read(filename)
planets = CSV.parse(csv_data, headers: true, encoding: "utf-8")







filename = Rails.root.join("db/data/species.csv")

puts "Loading Species: #{filename}"

csv_data = File.read(filename)
planets = CSV.parse(csv_data, headers: true, encoding: "utf-8")







filename = Rails.root.join("db/data/characters.csv")

puts "Loading Characters: #{filename}"

csv_data = File.read(filename)
planets = CSV.parse(csv_data, headers: true, encoding: "utf-8")