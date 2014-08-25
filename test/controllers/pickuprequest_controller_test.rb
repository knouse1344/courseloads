require 'test_helper'

class PickuprequestControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get _show" do
    get :_show
    assert_response :success
  end

  test "should get _new" do
    get :_new
    assert_response :success
  end

end
