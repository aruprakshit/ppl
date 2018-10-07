class CreateTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.belongs_to :user
      t.belongs_to :project
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
