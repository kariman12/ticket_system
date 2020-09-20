require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get distribute" do
    get admin_distribute_url
    assert_response :success
  end

end
