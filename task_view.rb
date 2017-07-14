class TaskView
  # def display(tasks)
  #   tasks.each_with_index do |task, index|
  #     done = task.done? ? "[x]" : "[ ]"
  #     puts "#{done} #{index + 1} - #{task.description}"
  #   end
  # end

  def display(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[x]" : "[ ]"
      puts "#{done} #{index + 1} - #{task.description}"
    end
  end

  def ask_user_for_task_description
    puts "What's the description of your new task?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "Please choose task number"
    print "> "
    return gets.chomp.to_i - 1
  end
end

