require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter the store name:"
name = gets.chomp
puts "Enter the store annual_revenue:"
annual_revenue = gets.chomp.to_i
puts "Enter the store mens_apparel(true/false):"
mens_apparel = gets.chomp
puts "Enter the store womens_apparel(true/false):"
womens_apparel = gets.chomp
store = Store.new(name: name, annual_revenue: annual_revenue, mens_apparel: mens_apparel, womens_apparel: womens_apparel)

if store.save
  puts "Store created successfully!"
else
  puts "Error creating store:"
  store.errors.full_messages.each { |msg| puts msg }
end