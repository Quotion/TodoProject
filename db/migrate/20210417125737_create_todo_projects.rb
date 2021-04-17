class CreateTodoProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_projects do |t|
      t.text :text
      t.boolean :isCompleted
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
