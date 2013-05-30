require 'test_helper'

class VoprosiesControllerTest < ActionController::TestCase
  setup do
    @voprosy = voprosies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voprosies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voprosy" do
    assert_difference('Voprosy.count') do
      post :create, voprosy: @voprosy.attributes
    end

    assert_redirected_to voprosy_path(assigns(:voprosy))
  end

  test "should show voprosy" do
    get :show, id: @voprosy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voprosy.to_param
    assert_response :success
  end

  test "should update voprosy" do
    put :update, id: @voprosy.to_param, voprosy: @voprosy.attributes
    assert_redirected_to voprosy_path(assigns(:voprosy))
  end

  test "should destroy voprosy" do
    assert_difference('Voprosy.count', -1) do
      delete :destroy, id: @voprosy.to_param
    end

    assert_redirected_to voprosies_path
  end
end
