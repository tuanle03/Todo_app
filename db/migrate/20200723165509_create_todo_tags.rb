class CreateTodoTags < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_tags do |t|
      t.integer :todo_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
