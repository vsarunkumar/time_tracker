# Users
users =
  [
    { name: 'admin', username: 'admin', email: 'admin@test.com', password: 'password',
      password_confirmation: 'password', admin: true },

    { name: 'user1', username: 'user1', email: 'user1@test.com', password: 'password',
      password_confirmation: 'password', admin: false },

    { name: 'user2', username: 'user2', email: 'user2@test.com', password: 'password',
      password_confirmation: 'password', admin: false }
  ]

users.each { |user| User.create!(user) }

# Projects

projects =
  [
    { name: 'Facebook', details: 'Facebook is an American for-profit corporation and
                                 an online social media and social networking service
                                 based in Menlo Park, California.' },
    { name: 'Twitter', details: 'Twitter is an online news and social networking service
    	                          where users post and interact with messages, "tweets",
    	                          restricted to 140 characters. ' },
    { name: 'Linkedin', details: 'LinkedIn is a business- and employment-oriented
    	                           social networking service that operates via websites
    	                            and mobile apps.' }
  ]

projects.each { |project| Project.create!(project) }

# Tasks

tasks =
  [
    { name: 'authentication', hour: 50, project_id: 1 },
    { name: 'post message', hour: 60, project_id: 1 },
    { name: 'search people', hour: 25, project_id: 1 },
    { name: 'find friend', hour: 30, project_id: 1 },
    { name: 'general settings', hour: 100, project_id: 1 },
    { name: 'fb page', hour: 32, project_id: 1 },
    { name: 'page settings', hour: 55, project_id: 1 },
    { name: 'authentication', hour: 50, project_id: 2 },
    { name: 'post tweet', hour: 60, project_id: 2 },
    { name: 'search people', hour: 25, project_id: 2 },
    { name: 'find friend', hour: 30, project_id: 1 },
    { name: 'general settings', hour: 100, project_id: 2 },
    { name: 'page settings', hour: 55, project_id: 2 },
    { name: 'authentication', hour: 50, project_id: 3 },
    { name: 'post message', hour: 60, project_id: 3 },
    { name: 'search people', hour: 25, project_id: 3 },
    { name: 'find friend', hour: 30, project_id: 1 },
    { name: 'general settings', hour: 100, project_id: 3 },
    { name: 'fb page', hour: 32, project_id: 1 },
    { name: 'page settings', hour: 55, project_id: 3 }
  ]

tasks.each { |task| Task.create!(task) }

# UserProject

User.find_each do |usr|
  Project.find_each do |projct|
    usr.projects << projct
  end
end

# UserTask

User.find_each do |usr|
  Task.find_each do |tsk|
    usr.tasks << tsk
  end
end

puts 'Seed User, Project and Task'
