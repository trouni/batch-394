require_relative 'task'

class Controller
	def initialize(repository, view)
		@repository = repository
		@view = view
	end

	def add_task
		# Ask the user for the title of the task
		title = @view.ask_user_for_task_title
		# Create the task
		task = Task.new(title)
		# Store the task in the repo
		@repository.add(task)
	end

	def list_tasks
		# Get the tasks from the repository
		tasks = @repository.tasks
		# Tell the view to display the tasks
		@view.display_tasks(tasks)
	end

	def mark_task_as_complete
		# Ask the user the index of the task to complete
		index = @view.ask_for_task_index
		# Get the task from the repository
		task = @repository.tasks[index]
		# Update the task to mark it complete
		task.mark_complete
	end
end