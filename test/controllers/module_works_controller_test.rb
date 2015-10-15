require 'test_helper'

class ModuleWorksControllerTest < ActionController::TestCase
  setup do
    @module_work = module_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:module_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create module_work" do
    assert_difference('ModuleWork.count') do
      post :create, module_work: { costo_mano_obra: @module_work.costo_mano_obra, costo_minuto: @module_work.costo_minuto, minutos_reales: @module_work.minutos_reales, otros_costos: @module_work.otros_costos }
    end

    assert_redirected_to module_work_path(assigns(:module_work))
  end

  test "should show module_work" do
    get :show, id: @module_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @module_work
    assert_response :success
  end

  test "should update module_work" do
    patch :update, id: @module_work, module_work: { costo_mano_obra: @module_work.costo_mano_obra, costo_minuto: @module_work.costo_minuto, minutos_reales: @module_work.minutos_reales, otros_costos: @module_work.otros_costos }
    assert_redirected_to module_work_path(assigns(:module_work))
  end

  test "should destroy module_work" do
    assert_difference('ModuleWork.count', -1) do
      delete :destroy, id: @module_work
    end

    assert_redirected_to module_works_path
  end
end
