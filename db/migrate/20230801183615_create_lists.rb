class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.integer :position
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
