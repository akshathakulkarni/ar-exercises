require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: false)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |each_store|
  puts "name = #{each_store.name} and annual_revenue = #{each_store.annual_revenue}"
end

@womens_store = Store.where(mens_apparel: false, womens_apparel: true).where("annual_revenue < ?", 1000000)
 
@womens_store.each do |each_store|
  puts "Store name = #{each_store.name} and annual_revenue = #{each_store.annual_revenue}"
end