class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :tasks
end
