class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :user_robots, :robots
end
