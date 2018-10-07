class Task < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :project, required: true
  belongs_to :user, required: false
end
