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
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { in: 40..200 }
  validates :store_id, presence: true
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :one_of_mens_or_womens_apparel
  def one_of_mens_or_womens_apparel
    if mens_apparel == false || womens_apparel == false
      errors.add(:store, "must carry at least one of the mens or womens apparel")
    end
  end
end

puts 'Enter a store name'
store_name = gets.chomp

@new_store = Store.create(name: store_name)
puts @new_store.errors.full_messages