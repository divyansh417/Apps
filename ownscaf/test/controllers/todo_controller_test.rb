require 'test_helper'

class TodoControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get editshow" do
    get :editshow
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get updateshow" do
    get :updateshow
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end