require "test_helper"

class RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get robots_create_url
    assert_response :success
  end
end
