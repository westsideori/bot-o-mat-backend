class CreateRobotTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :robot_tasks do |t|
      t.integer :robot_id
      t.integer :task_id

      t.timestamps
    end
  end
end
