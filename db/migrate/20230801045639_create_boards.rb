class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.boolean :isActive, default: false
      t.jsonb :data

      t.timestamps
    end
  end
end
