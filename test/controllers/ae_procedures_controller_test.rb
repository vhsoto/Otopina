require 'test_helper'

class AeProceduresControllerTest < ActionController::TestCase
  setup do
    @ae_procedure = ae_procedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ae_procedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ae_procedure" do
    assert_difference('AeProcedure.count') do
      post :create, ae_procedure: { adverse_event_id: @ae_procedure.adverse_event_id, charge_id: @ae_procedure.charge_id, procedure_id: @ae_procedure.procedure_id, procedure_price: @ae_procedure.procedure_price, procedure_subtotal: @ae_procedure.procedure_subtotal, procedure_time: @ae_procedure.procedure_time, service_id: @ae_procedure.service_id }
    end

    assert_redirected_to ae_procedure_path(assigns(:ae_procedure))
  end

  test "should show ae_procedure" do
    get :show, id: @ae_procedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ae_procedure
    assert_response :success
  end

  test "should update ae_procedure" do
    patch :update, id: @ae_procedure, ae_procedure: { adverse_event_id: @ae_procedure.adverse_event_id, charge_id: @ae_procedure.charge_id, procedure_id: @ae_procedure.procedure_id, procedure_price: @ae_procedure.procedure_price, procedure_subtotal: @ae_procedure.procedure_subtotal, procedure_time: @ae_procedure.procedure_time, service_id: @ae_procedure.service_id }
    assert_redirected_to ae_procedure_path(assigns(:ae_procedure))
  end

  test "should destroy ae_procedure" do
    assert_difference('AeProcedure.count', -1) do
      delete :destroy, id: @ae_procedure
    end

    assert_redirected_to ae_procedures_path
  end
end
