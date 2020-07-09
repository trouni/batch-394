class	Restaurant
	attr_reader :name, :clients
	attr_accessor	:capacity

	def initialize(name, city, capacity, category)
		# STATE?
		@name = name # string
		@city = city # string
		@capacity = capacity # integer
		@category = category # string

		@clients = []
	end

	def self.categories
		%w[japanese french thai italian]
	end

	def open?
		return Time.now.hour > 18 && Time.now.hour < 23
	end

	def make_reservation(client_name)
		@clients << client_name
	end
end