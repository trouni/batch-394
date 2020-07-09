class Chef
	attr_reader :restaurant
	def initialize(name, restaurant)
		@name = name # string
		@restaurant = restaurant # instance of restaurant
	end
end