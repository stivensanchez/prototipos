require 'test_helper'

class ModuleMachinesControllerTest < ActionController::TestCase
  setup do
    @module_machine = module_machines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:module_machines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create module_machine" do
    assert_difference('ModuleMachine.count') do
      post :create, module_machine: { machine_id: @module_machine.machine_id, modulo_id: @module_machine.modulo_id }
    end

    assert_redirected_to module_machine_path(assigns(:module_machine))
  end

  test "should show module_machine" do
    get :show, id: @module_machine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @module_machine
    assert_response :success
  end

  test "should update module_machine" do
    patch :update, id: @module_machine, module_machine: { machine_id: @module_machine.machine_id, modulo_id: @module_machine.modulo_id }
    assert_redirected_to module_machine_path(assigns(:module_machine))
  end

  test "should destroy module_machine" do
    assert_difference('ModuleMachine.count', -1) do
      delete :destroy, id: @module_machine
    end

    assert_redirected_to module_machines_path
  end
end
