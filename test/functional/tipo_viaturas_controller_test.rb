require 'test_helper'

class TipoViaturasControllerTest < ActionController::TestCase
  setup do
    @tipo_viatura = tipo_viaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_viaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_viatura" do
    assert_difference('TipoViatura.count') do
      post :create, :tipo_viatura => @tipo_viatura.attributes
    end

    assert_redirected_to tipo_viatura_path(assigns(:tipo_viatura))
  end

  test "should show tipo_viatura" do
    get :show, :id => @tipo_viatura.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_viatura.to_param
    assert_response :success
  end

  test "should update tipo_viatura" do
    put :update, :id => @tipo_viatura.to_param, :tipo_viatura => @tipo_viatura.attributes
    assert_redirected_to tipo_viatura_path(assigns(:tipo_viatura))
  end

  test "should destroy tipo_viatura" do
    assert_difference('TipoViatura.count', -1) do
      delete :destroy, :id => @tipo_viatura.to_param
    end

    assert_redirected_to tipo_viaturas_path
  end
end
