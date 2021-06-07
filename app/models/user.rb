class User < ApplicationRecord
  has_many :user_robots
  has_many :robots, through: :user_robots

  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
