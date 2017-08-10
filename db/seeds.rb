# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'tm.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  tm = Tm.new
  tm.tm_no = row['id']
  tm.move = row['move']
  tm.type_id = row['type']
  tm.effect = row['effect']
  tm.save
end
puts "#{Tm.count} saved"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemon.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  p = Pokemon.new
  p.index = row['pokedex_id']
  p.creature = row['pokemon']
  p.level = row['level']
  p.new_move_level = row['new_move_level']
  p.new_move = row['new_move']
  p.move_effect = row['move_effect']
  p.evolve_level = row['evolve_level']
  p.other = row['other']
  p.save
end
puts "#{Pokemon.count} saved"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'attack.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  b = Battle.new
  b.offense_id = row['offense']
  b.defense_id = row['defense']
  b.effectiveness = row['effectiveness']
  b.save
end
puts "#{Battle.count} saved"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'poketype.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  pt = Poketype.new
  pt.pokemon_id = row['pokedex_id']
  pt.type_id = row['type']
  pt.save
end
puts "#{Poketype.count} saved"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'type.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Type.new
  t.title = row['type']
  t.save
end
puts "#{Type.count} saved"
