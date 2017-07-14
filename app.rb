require_relative 'router'
require_relative 'controller'
require_relative 'task_repository'

repository = TaskRepository.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run
