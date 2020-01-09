require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "Should get show" do
    get root_url
    assert_response :success
  end
end
