class CreateProjectsUsersJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :projects_users, id: false do |t|
      t.references :project, index: true
      t.references :user, index: true
    end
  end
end
