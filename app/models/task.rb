class Task < ApplicationRecord
  has_many :robot_tasks
  has_many :robots, through: :robot_tasks
  
end
