require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store 
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Max", last_name: "Karl", hourly_rate: 40)
@store2.employees.create(first_name: "Samantha", last_name: "Ming", hourly_rate: 40)
@store2.employees.create(first_name: "Jack", last_name: "Kale", hourly_rate: 50)