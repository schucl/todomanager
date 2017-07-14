require_relative 'task'
require_relative 'task_view'

class Controller # User Actions
  def initialize(repository)
    @repository = repository
    @view = TaskView.new
  end

  # List all tasks
  # Create a task
  # Mark a task as done
  # Delete a task


  def list_tasks
    # 1. ask the repo to list all tasks
    # 2. pass it to the vie to display to the user
    display_tasks
  end

  def add_task
    # 1. ask user what they want to do, here we need a view, that's why we need
    #   to give the controller an instance of view in the initialize method
    # 2. create task instance. Here we just create a new instance, and we give it
    #   the description we just got from user/view
    # 3. give the task instance to repo. Here, we see that we need a repository
    #   that's why we need to give a repo to the controller in the initialize meth
    #  Here if we recap, the user action was to add a new task, which is the controller
    #   role. Did so by, asking the user for a description, through the view, we got
    #   a description, with that the controller created an instance of task, which
    #   he then passed on to the repo who's role is to store it
    description = @view.ask_user_for_task_description
    task = Task.new(description)
    @repository.add(task)
  end

  def mark_task_as_complete
    # 1 display all tasks to user
    # 2 ask user to choose index
    # 3 pass index to repository to find
    display_tasks
    index = @view.ask_user_for_index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def delete_task
    # 1 display all tasks to user
    # 2 ask user to choose index
    # 3 pass index to repository to delete
    display_tasks
    index = @view.ask_user_for_index
    @repository.remove(index)
  end

  private

  def display_tasks
    # fetch tasks from repo
    # ask view to display tasks to user
    tasks = @repository.all
    @view.display(tasks)
  end

end
