require "test_helper"

class UserRobotControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_robot_create_url
    assert_response :success
  end
end
