require 'open-uri'
require 'json'

Ingredient.destroy_all

# Ingredient.create(name: 'Lemon')
# Ingredient.create(name: 'Ice')
# Ingredient.create(name: 'Mint leaves')
# Ingredient.create(name: 'Orange')
# Ingredient.create(name: 'Olive')
# Ingredient.create(name: 'Rosemary')
# Ingredient.create(name: 'Gin')
# Ingredient.create(name: 'Tonic')
# Ingredient.create(name: 'Bourbon')
# Ingredient.create(name: 'Bitters')
# Ingredient.create(name: 'Simple syrup')

# Optional: have fun and seed real ingredients using
# this JSON list (with open-uri and json ruby libs).

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
