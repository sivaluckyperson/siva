require 'test_helper'

class TiniesControllerTest < ActionController::TestCase
  setup do
    @tiny = tinies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tinies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiny" do
    assert_difference('Tiny.count') do
      post :create, tiny: { tiny: @tiny.tiny, url: @tiny.url }
    end

    assert_redirected_to tiny_path(assigns(:tiny))
  end

  test "should show tiny" do
    get :show, id: @tiny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiny
    assert_response :success
  end

  test "should update tiny" do
    put :update, id: @tiny, tiny: { tiny: @tiny.tiny, url: @tiny.url }
    assert_redirected_to tiny_path(assigns(:tiny))
  end

  test "should destroy tiny" do
    assert_difference('Tiny.count', -1) do
      delete :destroy, id: @tiny
    end

    assert_redirected_to tinies_path
  end
end
