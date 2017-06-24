require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get signin" do
    get :signin
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get sigin_submit" do
    get :sigin_submit
    assert_response :success
  end

  test "should get signup_submit" do
    get :signup_submit
    assert_response :success
  end

end
