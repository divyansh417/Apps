require 'test_helper'

class TodosControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get done" do
    get :done
    assert_response :success
  end

end
