require 'test_helper'

class OpersControllerTest < ActionController::TestCase
  setup do
    @oper = opers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oper" do
    assert_difference('Oper.count') do
      post :create, oper: { apellido: @oper.apellido, group_id: @oper.group_id, nombre: @oper.nombre, telefono: @oper.telefono }
    end

    assert_redirected_to oper_path(assigns(:oper))
  end

  test "should show oper" do
    get :show, id: @oper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oper
    assert_response :success
  end

  test "should update oper" do
    patch :update, id: @oper, oper: { apellido: @oper.apellido, group_id: @oper.group_id, nombre: @oper.nombre, telefono: @oper.telefono }
    assert_redirected_to oper_path(assigns(:oper))
  end

  test "should destroy oper" do
    assert_difference('Oper.count', -1) do
      delete :destroy, id: @oper
    end

    assert_redirected_to opers_path
  end
end
