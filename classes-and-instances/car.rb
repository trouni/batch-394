# car.rb lower_snake_case
class	Car # UpperCamelCase
	def initialize(color, brand = 'Toyota') # Constructor
		# instance variables
		# these variables persist outside of this method, but remain within the class
		@color = color # String
		@engine_started = false # Boolean
	end

	# instance method
	def start_engine
		@engine_started = true
	end

	def engine_started?
		return @engine_started
	end

	attr_reader :color
	# def color
	# 	return @color
	# end

	attr_writer :color
	# def color=(color)
	# 	@color = color
	# end

	# attr_reader + attr_writer
	attr_accessor :color
end

# Encapsulation
# By default all instance variables are hidden
# You need attr_reader to expose them
# Don't put attr_accessor on everything
