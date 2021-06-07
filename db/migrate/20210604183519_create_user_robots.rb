class CreateUserRobots < ActiveRecord::Migration[6.1]
  def change
    create_table :user_robots do |t|
      t.string :name
      t.integer :user_id
      t.integer :robot_id
      t.integer :completed_tasks

      t.timestamps
    end
  end
end
