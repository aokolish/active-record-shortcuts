# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bob = User.create!(name: 'Bob Smith')
order = Order.create!(user: bob)

toothpaste = Product.create!(name: 'Awesome toothpaste', price: 500)
apple = Product.create!(name: 'apple', price: 100)
green_beans = Product.create!(name: 'green beans', price: 200)

order.line_items << LineItem.new(product: toothpaste, quantity: 2)
order.line_items << LineItem.new(product: apple, quantity: 5)

new_order = Order.create!(user: bob)
new_order.line_items << LineItem.new(product: green_beans, quantity: 1)

last_order = Order.create!(user: bob)
last_order.line_items << LineItem.new(product: green_beans, quantity: 2)
