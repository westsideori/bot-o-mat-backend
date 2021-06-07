require "test_helper"

class RobotTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get robot_tasks_create_url
    assert_response :success
  end

  test "should get update" do
    get robot_tasks_update_url
    assert_response :success
  end
end
