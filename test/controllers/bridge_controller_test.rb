require 'test_helper'

class BridgeControllerTest < ActionController::TestCase
  test "should get options" do
    get :options
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

end
