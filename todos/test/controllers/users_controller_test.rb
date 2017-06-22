require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get signin_submit" do
    get :signin_submit
    assert_response :success
  end

  test "should get signup_submit" do
    get :signup_submit
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
