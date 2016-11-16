require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

<<<<<<< HEAD
  test "should get about" do
    get :about
=======
  test "should get helpabout" do
    get :helpabout
>>>>>>> InitModle-Relationship
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
