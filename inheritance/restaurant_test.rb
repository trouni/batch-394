require_relative 'restaurant'
require_relative 'fastfood'
require_relative 'gastronomic'

saito =
Gastronomic.new("Sushi Saito", "Tokyo", 15, "sushi", 3, "Momo Ramsay")

# p saito
# p saito.chef
p saito.chef.restaurant.chef

# p Restaurant.categories

# imahan =
# Restaurant.new("Imahan", "Tokyo", 40, "japanese")

# puts 'Making reservations at Imahan...'
# imahan.make_reservation('baris')
# imahan.make_reservation('yun')


# puts 'Making reservations at Sushi Saito...'
# saito.make_reservation('nicole')
# saito.make_reservation('chi')
# saito.make_reservation('pins')

# yoshinoya =
# Fastfood.new("Yoshinoya", "Tokyo", 20, "gyudon", 2)

# puts 'Making reservations at Yoshinoya...'
# yoshinoya.make_reservation('trouni')
# puts "#{yoshinoya.name} takes #{yoshinoya.prep_time} minutes to prepare."

# p imahan
# p saito
# p yoshinoya
