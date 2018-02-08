require 'test_helper'

class EntranceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entrance_index_url
    assert_response :success
  end

end
