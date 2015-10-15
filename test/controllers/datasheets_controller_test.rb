require 'test_helper'

class DatasheetsControllerTest < ActionController::TestCase
  setup do
    @datasheet = datasheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datasheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datasheet" do
    assert_difference('Datasheet.count') do
      post :create, datasheet: { nombre: @datasheet.nombre, referencia: @datasheet.referencia, supply_id: @datasheet.supply_id }
    end

    assert_redirected_to datasheet_path(assigns(:datasheet))
  end

  test "should show datasheet" do
    get :show, id: @datasheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datasheet
    assert_response :success
  end

  test "should update datasheet" do
    patch :update, id: @datasheet, datasheet: { nombre: @datasheet.nombre, referencia: @datasheet.referencia, supply_id: @datasheet.supply_id }
    assert_redirected_to datasheet_path(assigns(:datasheet))
  end

  test "should destroy datasheet" do
    assert_difference('Datasheet.count', -1) do
      delete :destroy, id: @datasheet
    end

    assert_redirected_to datasheets_path
  end
end
