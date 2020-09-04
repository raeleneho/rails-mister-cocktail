# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
Ingredient.destroy_all
Cocktail.destroy_all

puts "creating...."

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "apple juice")
Ingredient.create(name: "vodka")
Ingredient.create(name: "dark rum")
Ingredient.create(name: "coffee")
Ingredient.create(name: "pineapple juice")
Ingredient.create(name: "strawberries")

Cocktail.create(name: "Espresso Martini")
Cocktail.create(name: "Le Wagon's Bloody Mary")
Cocktail.create(name: "Pina Colada")
Cocktail.create(name: "Malaysian Mojito")
Cocktail.create(name: "Rummy Mummy")
Cocktail.create(name: "Strawberry Dai")

puts "cocktails done!"