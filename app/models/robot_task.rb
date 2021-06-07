class RobotTask < ApplicationRecord
  belongs_to :robot
  belongs_to :task
end
