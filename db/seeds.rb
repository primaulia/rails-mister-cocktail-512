require 'open-uri'
require 'json'

# CLEAN THE SEEDS
puts "Start of the seed"

puts "clean the db first"
Cocktail.destroy_all
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

raw_json = open(url).read
json = JSON.parse(raw_json)

json["drinks"].each do |ingredient|
  puts "Creating #{ingredient["strIngredient1"]}"
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "End of seed"

