class Task
  attr_reader(:description, :list_id, :id)

  define_method(:initialize) do |attributes|
    @description = attributes[:description]
    @list_id = attributes[:list_id]
    @id = attributes[:id]
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    returned_tasks = DB.exec("SELECT * FROM tasks;")
    tasks = []
    returned_tasks.each() do |task|
      description = task.fetch("description")
      tasks.push(Task.new({:description => description}))
    end
    tasks
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO tasks (description, list_id) VALUES ('#{@description}', #{@list_id}) RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  define_method(:==) do |another_task|
    self.description().==(another_task.description())
  end
end