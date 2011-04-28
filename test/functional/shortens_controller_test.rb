require 'test_helper'

class ShortensControllerTest < ActionController::TestCase
  setup do
    @shorten = shortens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shortens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shorten" do
    assert_difference('Shorten.count') do
      post :create, shorten: @shorten.attributes
    end

    assert_redirected_to shorten_path(assigns(:shorten))
  end

  test "should show shorten" do
    get :show, id: @shorten.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shorten.to_param
    assert_response :success
  end

  test "should update shorten" do
    put :update, id: @shorten.to_param, shorten: @shorten.attributes
    assert_redirected_to shorten_path(assigns(:shorten))
  end

  test "should destroy shorten" do
    assert_difference('Shorten.count', -1) do
      delete :destroy, id: @shorten.to_param
    end

    assert_redirected_to shortens_path
  end
end
