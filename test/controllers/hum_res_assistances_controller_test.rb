require 'test_helper'

class HumResAssistancesControllerTest < ActionController::TestCase
  setup do
    @hum_res_assistance = hum_res_assistances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hum_res_assistances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hum_res_assistance" do
    assert_difference('HumResAssistance.count') do
      post :create, hum_res_assistance: { adverse_event_id: @hum_res_assistance.adverse_event_id, name: @hum_res_assistance.name, price: @hum_res_assistance.price, qty: @hum_res_assistance.qty, service_id: @hum_res_assistance.service_id, subtotal: @hum_res_assistance.subtotal, time: @hum_res_assistance.time }
    end

    assert_redirected_to hum_res_assistance_path(assigns(:hum_res_assistance))
  end

  test "should show hum_res_assistance" do
    get :show, id: @hum_res_assistance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hum_res_assistance
    assert_response :success
  end

  test "should update hum_res_assistance" do
    patch :update, id: @hum_res_assistance, hum_res_assistance: { adverse_event_id: @hum_res_assistance.adverse_event_id, name: @hum_res_assistance.name, price: @hum_res_assistance.price, qty: @hum_res_assistance.qty, service_id: @hum_res_assistance.service_id, subtotal: @hum_res_assistance.subtotal, time: @hum_res_assistance.time }
    assert_redirected_to hum_res_assistance_path(assigns(:hum_res_assistance))
  end

  test "should destroy hum_res_assistance" do
    assert_difference('HumResAssistance.count', -1) do
      delete :destroy, id: @hum_res_assistance
    end

    assert_redirected_to hum_res_assistances_path
  end
end
