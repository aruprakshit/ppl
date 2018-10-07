class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :user_projects
  has_many :projects, through: :user_projects
end
