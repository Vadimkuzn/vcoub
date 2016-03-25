require 'test_helper'

class Likes::Coub::TasksControllerTest < ActionController::TestCase
  test "should get vcoub" do
    get :vcoub
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
