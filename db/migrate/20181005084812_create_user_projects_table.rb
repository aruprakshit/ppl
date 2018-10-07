class CreateUserProjectsTable < ActiveRecord::Migration
  def change
    create_table :user_projects do |t|
      t.belongs_to :user
      t.belongs_to :project
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
