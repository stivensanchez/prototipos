require 'test_helper'

class MachineModulesControllerTest < ActionController::TestCase
  setup do
    @machine_module = machine_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machine_module" do
    assert_difference('MachineModule.count') do
      post :create, machine_module: { cantidad: @machine_module.cantidad, fecha_compra: @machine_module.fecha_compra, machine_id: @machine_module.machine_id, precio: @machine_module.precio, total_maquina: @machine_module.total_maquina, valor_depreciacion: @machine_module.valor_depreciacion, valor_total_maquina: @machine_module.valor_total_maquina }
    end

    assert_redirected_to machine_module_path(assigns(:machine_module))
  end

  test "should show machine_module" do
    get :show, id: @machine_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machine_module
    assert_response :success
  end

  test "should update machine_module" do
    patch :update, id: @machine_module, machine_module: { cantidad: @machine_module.cantidad, fecha_compra: @machine_module.fecha_compra, machine_id: @machine_module.machine_id, precio: @machine_module.precio, total_maquina: @machine_module.total_maquina, valor_depreciacion: @machine_module.valor_depreciacion, valor_total_maquina: @machine_module.valor_total_maquina }
    assert_redirected_to machine_module_path(assigns(:machine_module))
  end

  test "should destroy machine_module" do
    assert_difference('MachineModule.count', -1) do
      delete :destroy, id: @machine_module
    end

    assert_redirected_to machine_modules_path
  end
end
