class Robot < ApplicationRecord
  has_many :user_robots
  has_many :users, through: :user_robots
  has_many :robot_tasks
  has_many :tasks, through: :robot_tasks

  validates :robot_type, presence: true
end
