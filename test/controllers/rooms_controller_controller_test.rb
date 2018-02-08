require 'test_helper'

class RoomsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rooms_controller_index_url
    assert_response :success
  end

end
