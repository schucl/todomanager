class TaskRepository
  def initialize
    @tasks = []
  end
  # CRUD Create (add), Read (list, here list all we could list one specific), Update (find ..incomplete doesnt save)
  # list all tasks
  # add a task
  # find a task
  # delete a task

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
