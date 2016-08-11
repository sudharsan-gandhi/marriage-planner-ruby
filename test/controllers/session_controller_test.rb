require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get handler" do
    get :handler
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
