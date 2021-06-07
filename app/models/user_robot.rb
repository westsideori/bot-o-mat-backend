class UserRobot < ApplicationRecord
  belongs_to :user
  belongs_to :robot

  validates :name, presence: true
end
