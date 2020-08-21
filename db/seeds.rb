require 'open-uri'
require 'json'
require 'pry-byebug'

Dose.delete_all
Cocktail.delete_all
Ingredient.delete_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks = open(url).read
json = JSON.parse(drinks)
json['drinks'].each_with_index do |drink, i|
  Ingredient.create!(name: drink['strIngredient1'])
end

tequila = Ingredient.create(name: 'tequila')
kaluha = Ingredient.create(name: 'kaluha')
vodka = Ingredient.create(name: 'vodka')
salt = Ingredient.create(name: 'salt')
honey = Ingredient.create(name: 'honey')
sake = Ingredient.create(name: 'sake')
gin = Ingredient.create(name: 'gin')
contreau = Ingredient.create(name: 'contreau')
soju = Ingredient.create(name: 'soju')
shochu = Ingredient.create(name: 'shochu')
sugar = Ingredient.create(name: 'sugar')
tea = Ingredient.create(name: 'tea')
baileys = Ingredient.create(name: 'baileys')

a = Cocktail.create!(name: 'Gin tonic')
b = Cocktail.create!(name: 'Irish car bomb')
c = Cocktail.create!(name: 'Piña Colada')
d = Cocktail.create!(name: 'Mojito')

Dose.create!(description: '1 shot', cocktail_id: a.id, ingredient: tequila)
Dose.create!(description: 'half shot', cocktail_id: a.id, ingredient: kaluha)
Dose.create!(description: '2 tea spoons', cocktail_id: a.id, ingredient: vodka)
Dose.create!(description: '1 shot', cocktail_id: a.id, ingredient: salt)
Dose.create!(description: 'a pinch', cocktail_id: b.id, ingredient: honey)
Dose.create!(description: 'half shot', cocktail_id: b.id, ingredient: sake)
Dose.create!(description: '2 tea spoons', cocktail_id: b.id, ingredient: gin)
Dose.create!(description: '1 shot', cocktail_id: b.id, ingredient: contreau)
Dose.create!(description: 'a pinch', cocktail_id: c.id, ingredient: soju)
Dose.create!(description: 'half shot', cocktail_id: c.id, ingredient: shochu)
Dose.create!(description: '2 tea spoons', cocktail_id: d.id, ingredient: sugar)
Dose.create!(description: '1 shot', cocktail_id: d.id, ingredient: tea)
Dose.create!(description: 'a pinch', cocktail_id: d.id, ingredient: baileys)


