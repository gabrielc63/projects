class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.string :status
      t.references :list, foreign_key: true
      t.references :parent_task, foreign_key: { to_table: :tasks }
      t.boolean :is_completed

      t.timestamps
    end
  end
end
