require_relative 'restaurant'

class Fastfood < Restaurant
	attr_reader :prep_time
	def initialize(name, city, capacity, category, prep_time)
		# STATE?
		super(name, city, capacity, category)
		@prep_time = prep_time # integer
	end

	def make_reservation(client_name)
		puts "Sorry, we don't take reservations."
	end
end