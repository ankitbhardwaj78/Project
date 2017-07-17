require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get remove_profile_pic" do
    get :remove_profile_pic
    assert_response :success
  end

end
