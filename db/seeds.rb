tasks = [
  {
    description: 'do the dishes',
    eta: 1000,
  },
  {
    description: 'sweep the house',
    eta: 3000,
  },
  {
    description: 'do the laundry',
    eta: 10000,
  },
  {
    description: 'take out the recycling',
    eta: 4000,
  },
  {
    description: 'make a sammich',
    eta: 7000,
  },
  {
    description: 'mow the lawn',
    eta: 20000,
  },
  {
    description: 'rake the leaves',
    eta: 18000,
  },
  {
    description: 'give the dog a bath',
    eta: 14500,
  },
  {
    description: 'bake some cookies',
    eta: 8000,
  },
  {
    description: 'wash the car',
    eta: 20000,
  },
]


Robot.create(robot_type: "unipedal", image_url: Faker::Avatar.image)
Robot.create(robot_type: "bipedal", image_url: Faker::Avatar.image)
Robot.create(robot_type: "quadrupedal", image_url: Faker::Avatar.image)
Robot.create(robot_type: "arachnid", image_url: Faker::Avatar.image)
Robot.create(robot_type: "radial", image_url: Faker::Avatar.image)
Robot.create(robot_type: "aeronautical", image_url: Faker::Avatar.image)

tasks.each do |task|
  Task.create(description: task[:description], eta: task[:eta])
end

5.times do
  RobotTask.create(robot_id: 1, task_id: rand(1..10))
end

5.times do
  RobotTask.create(robot_id: 2, task_id: rand(1..10))
end

5.times do
  RobotTask.create(robot_id: 3, task_id: rand(1..10))
end

5.times do
  RobotTask.create(robot_id: 4, task_id: rand(1..10))
end

5.times do
  RobotTask.create(robot_id: 5, task_id: rand(1..10))
end

5.times do
  RobotTask.create(robot_id: 6, task_id: rand(1..10))
end

puts "Done!"

