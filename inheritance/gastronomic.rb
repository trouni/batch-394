require_relative 'restaurant'
require_relative 'chef'

class Gastronomic < Restaurant
	attr_reader :stars, :chef
	def initialize(name, city, capacity, category, stars, chef_name)
		# STATE?
		super(name, city, capacity, category)
		@stars = stars # integer
		@chef = Chef.new(chef_name, self)
	end

	def open?
		super || Time.now.hour > 11 && Time.now.hour < 14
	end
end