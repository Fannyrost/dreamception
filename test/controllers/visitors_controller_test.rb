require 'test_helper'

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get visitors_show_url
    assert_response :success
  end

end
