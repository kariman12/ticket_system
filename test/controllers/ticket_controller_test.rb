require 'test_helper'

class TicketControllerTest < ActionDispatch::IntegrationTest
  test "should get req" do
    get ticket_req_url
    assert_response :success
  end

end
