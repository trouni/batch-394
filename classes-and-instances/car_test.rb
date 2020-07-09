require_relative 'car'

my_car = Car.new('red', 'ferrari')

my_car.start_engine

puts 'Is my car started?'
puts my_car.engine_started ? 'yes' : 'no'

puts 'What color is the car?'
puts my_car.color

my_car.color = 

puts "My car is now #{my_car.color}"