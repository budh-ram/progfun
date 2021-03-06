# Composite Task Base class
class CompositeTask < Task
  def initialize(name)
    super name
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete task
  end

  def time_required
    time = 0.0
    @sub_tasks.each { |t| time += t.time_required }
    time
  end
end
