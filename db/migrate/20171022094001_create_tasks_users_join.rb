class CreateTasksUsersJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks_users, id: false do |t|
      t.references :task, index: true
      t.references :user, index: true
    end
  end
end
