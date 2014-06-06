require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get no--test-framework" do
    get :no--test-framework
    assert_response :success
  end

end
