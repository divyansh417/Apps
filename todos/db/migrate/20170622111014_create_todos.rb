class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :content
      t.boolean :done
      t.boolean :urgent, default: false
      t.references :user, index:true, foreign_key:true

      t.timestamps null: false
    end
  end
end
