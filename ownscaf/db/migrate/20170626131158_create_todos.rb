class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.boolean :important
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
