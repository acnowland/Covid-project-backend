require "test_helper"

class CovidsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get covids_index_url
    assert_response :success
  end
end
