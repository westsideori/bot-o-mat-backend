class CreateRobots < ActiveRecord::Migration[6.1]
  def change
    create_table :robots do |t|
      t.string :robot_type
      t.string :image_url

      t.timestamps
    end
  end
end
