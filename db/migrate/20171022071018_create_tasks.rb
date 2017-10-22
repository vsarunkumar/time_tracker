class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, default: ''
      t.integer :hour
      t.references :project, index: true

      t.timestamps
    end
  end
end
