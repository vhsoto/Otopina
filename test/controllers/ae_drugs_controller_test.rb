require 'test_helper'

class AeDrugsControllerTest < ActionController::TestCase
  setup do
    @ae_drug = ae_drugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ae_drugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ae_drug" do
    assert_difference('AeDrug.count') do
      post :create, ae_drug: { adverse_event_id: @ae_drug.adverse_event_id, charge_id: @ae_drug.charge_id, drug_id: @ae_drug.drug_id, drug_price: @ae_drug.drug_price, drug_subtotal: @ae_drug.drug_subtotal, drug_time: @ae_drug.drug_time, qty: @ae_drug.qty, service_id: @ae_drug.service_id }
    end

    assert_redirected_to ae_drug_path(assigns(:ae_drug))
  end

  test "should show ae_drug" do
    get :show, id: @ae_drug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ae_drug
    assert_response :success
  end

  test "should update ae_drug" do
    patch :update, id: @ae_drug, ae_drug: { adverse_event_id: @ae_drug.adverse_event_id, charge_id: @ae_drug.charge_id, drug_id: @ae_drug.drug_id, drug_price: @ae_drug.drug_price, drug_subtotal: @ae_drug.drug_subtotal, drug_time: @ae_drug.drug_time, qty: @ae_drug.qty, service_id: @ae_drug.service_id }
    assert_redirected_to ae_drug_path(assigns(:ae_drug))
  end

  test "should destroy ae_drug" do
    assert_difference('AeDrug.count', -1) do
      delete :destroy, id: @ae_drug
    end

    assert_redirected_to ae_drugs_path
  end
end
