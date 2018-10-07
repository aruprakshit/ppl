require_relative 'server'

project_1 = Project.create!(name: "Test Project" , description: "This is the project description!")
project_1.users.create!(first_name: "Kvothe" , last_name: "Vintas",  email: "foobar@foo.com")

# task_1 = Task.create(name: "Learn to Code", description: "First one must master the art of the pry", due_date: Date.today, user: user_1, project: project_1)
