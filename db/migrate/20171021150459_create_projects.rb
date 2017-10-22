class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false, default: ''
      t.text :details

      t.timestamps
    end
  end
end
