require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get players" do
    get admin_players_url
    assert_response :success
  end
end
