Rails.application.routes.draw do
  # get 'robot_tasks/create'
  # get 'robot_tasks/update'
  # get 'tasks/create'
  # get 'user_robot/create'
  # get 'robots/create'
  # get 'users/create'

  get "/users", to: "users#index"
  get "/me", to: "users#show"
  post "/login", to: "users#login"
  post "/signup", to: "users#create"

  get "/robots", to: "robots#index"
  post "/robots", to: "robots#create"

  get "/tasks", to: "tasks#index"
  post "/tasks", to: "tasks#create"

  get "/user_robots/:user_id", to: "user_robots#index"
  get "/user_robot/:id", to: "user_robots#show"
  post "/user_robots", to: "user_robots#create"
  patch "/user_robots/:id", to: "user_robots#update"

  get "/robot_tasks/:robot_id", to: "robot_tasks#index"
  post "/robot_tasks", to: "robot_tasks#create"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
