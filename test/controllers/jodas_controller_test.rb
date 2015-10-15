require 'test_helper'

class JodasControllerTest < ActionController::TestCase
  setup do
    @joda = jodas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jodas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joda" do
    assert_difference('Joda.count') do
      post :create, joda: { apellido: @joda.apellido, nombre: @joda.nombre, telefono: @joda.telefono }
    end

    assert_redirected_to joda_path(assigns(:joda))
  end

  test "should show joda" do
    get :show, id: @joda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joda
    assert_response :success
  end

  test "should update joda" do
    patch :update, id: @joda, joda: { apellido: @joda.apellido, nombre: @joda.nombre, telefono: @joda.telefono }
    assert_redirected_to joda_path(assigns(:joda))
  end

  test "should destroy joda" do
    assert_difference('Joda.count', -1) do
      delete :destroy, id: @joda
    end

    assert_redirected_to jodas_path
  end
end
