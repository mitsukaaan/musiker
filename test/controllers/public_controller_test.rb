require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get customers" do
    get public_customers_url
    assert_response :success
  end
end
