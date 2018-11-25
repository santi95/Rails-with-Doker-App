require 'test_helper'

class StatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stat_index_url
    assert_response :success
  end

end
