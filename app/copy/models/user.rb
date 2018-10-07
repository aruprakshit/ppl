class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  has_many :user_projects
  has_many :projects, through: :user_projects
end
