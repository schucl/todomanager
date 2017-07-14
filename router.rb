class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '3 - Mark a task as done'
    puts '4 - Remove a task'
    puts '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.list_tasks
    when 2 then @controller.add_task
    when 3 then @controller.mark_task_as_complete
    when 4 then @controller.delete_task
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
