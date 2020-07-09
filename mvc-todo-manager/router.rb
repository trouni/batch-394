class Router
	def initialize(controller)
		@controller = controller
	end

	def run
		# Infinite loop
		loop do
			puts
			puts 'What would you like to do next?'
			puts '1. Add a task'
			puts '2. List all the tasks'
			puts '3. Mark a task as complete'
			print '> '
			choice = gets.chomp.to_i

			case choice
			when 1 then @controller.add_task
			when 2 then @controller.list_tasks
			when 3 then @controller.mark_task_as_complete
			end
		end
	end
end