require 'open-uri'
require 'json'

Ingredient.delete_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks = open(url).read
json = JSON.parse(drinks)
json['drinks'].each do |drink|
  Ingredient.create!(name: drink['strIngredient1'])
end
