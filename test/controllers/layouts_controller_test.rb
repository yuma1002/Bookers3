require "test_helper"

class LayoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get layouts_top_url
    assert_response :success
  end
end
