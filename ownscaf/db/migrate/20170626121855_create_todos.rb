class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.datetime :deadline
      t.integer :priority
      t.boolean :important

      t.timestamps null: false
    end
  end
end
