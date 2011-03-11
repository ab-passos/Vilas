require 'test_helper'

class CombustivelsControllerTest < ActionController::TestCase
  setup do
    @combustivel = combustivels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combustivels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combustivel" do
    assert_difference('Combustivel.count') do
      post :create, :combustivel => @combustivel.attributes
    end

    assert_redirected_to combustivel_path(assigns(:combustivel))
  end

  test "should show combustivel" do
    get :show, :id => @combustivel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @combustivel.to_param
    assert_response :success
  end

  test "should update combustivel" do
    put :update, :id => @combustivel.to_param, :combustivel => @combustivel.attributes
    assert_redirected_to combustivel_path(assigns(:combustivel))
  end

  test "should destroy combustivel" do
    assert_difference('Combustivel.count', -1) do
      delete :destroy, :id => @combustivel.to_param
    end

    assert_redirected_to combustivels_path
  end
end
