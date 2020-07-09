class View
	def ask_user_for_task_title
		puts
		puts 'What task do you want to add?'
		print '> '
		return gets.chomp
	end

	def display_tasks(tasks)
		puts
		puts 'Here are your tasks:'
		tasks.each_with_index do |task, index|
			# 1. [x] Task
			x = task.completed? ? 'x' : ' '
			puts "#{index + 1}. [#{x}] #{task.title}"
		end
	end

	def ask_for_task_index
		puts
		puts 'Which task to mark as completed?'
		print '> '
		return gets.chomp.to_i - 1
	end
end