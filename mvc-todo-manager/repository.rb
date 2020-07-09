class Repository # repo to store my tasks
	attr_reader :tasks
	
	def initialize
		@tasks = []
	end

	# CRUD
	def add(task)
		@tasks << task
	end
end