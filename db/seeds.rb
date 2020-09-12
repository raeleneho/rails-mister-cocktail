# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "open-uri"

puts "Cleaning database..."
Ingredient.destroy_all
Cocktail.destroy_all

puts "creating ingredients.."

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "apple juice")
Ingredient.create(name: "vodka")
Ingredient.create(name: "dark rum")
Ingredient.create(name: "coffee")
Ingredient.create(name: "pineapple juice")
Ingredient.create(name: "strawberries")

puts "creating cocktails.."


cocktail_1 = Cocktail.create(name: "Espresso Martini")
file = URI.open('https://res.cloudinary.com/darykdgut/image/upload/v1599888844/espressomartini.png')
cocktail_1.photo.attach(io: file, filename: 'espressomartini.png', content_type: 'image/png')

cocktail_2 = Cocktail.create(name: "Journey to The West")
file = URI.open('https://res.cloudinary.com/darykdgut/image/upload/v1599888850/journeytothewest.png')
cocktail_2.photo.attach(io: file, filename: 'journeytothewest.png', content_type: 'image/png')

cocktail_3 = Cocktail.create(name: "Madame President")
file = URI.open('https://res.cloudinary.com/darykdgut/image/upload/v1599888832/madamepresident.png')
cocktail_3.photo.attach(io: file, filename: 'madamepresident.png', content_type: 'image/png')

cocktail_4 = Cocktail.create(name: "Malaysian Mojito")
file = URI.open('https://res.cloudinary.com/darykdgut/image/upload/v1599888877/malaysianmojito.png')
cocktail_4.photo.attach(io: file, filename: 'malaysianmojito.png', content_type: 'image/png')

cocktail_5 = Cocktail.create(name: "Rummy Mummy")
file = URI.open('https://res.cloudinary.com/darykdgut/image/upload/v1599888856/rummymummy.png')
cocktail_5.photo.attach(io: file, filename: 'rummymummy.png', content_type: 'image/png')

cocktail_6 = Cocktail.create(name: "Strawberry Daiquiri")
file = URI.open('https://res.cloudinary.com/darykdgut/image/upload/v1599888837/strawberrydaiquiri.png')
cocktail_6.photo.attach(io: file, filename: 'strawberrydaiquiri.png', content_type: 'image/png')

puts "cocktails done!"