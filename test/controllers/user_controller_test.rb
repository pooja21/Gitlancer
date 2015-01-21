require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get Create" do
    get :Create
    assert_response :success
  end

end
