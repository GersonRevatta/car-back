# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Item.create(name: 'product_01', price: 15)
Item.create(name: 'product_02', price: 18)
Item.create(name: 'product_03', price: 19)
Item.create(name: 'product_04', price: 15)
Item.create(name: 'product_05', price: 18)
Item.create(name: 'product_06', price: 19)
Item.create(name: 'product_07', price: 15)
Item.create(name: 'product_08', price: 18)
Item.create(name: 'product_09', price: 19)

Order.destroy_all
p 'Finished'
