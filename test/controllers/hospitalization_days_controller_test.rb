require 'test_helper'

class HospitalizationDaysControllerTest < ActionController::TestCase
  setup do
    @hospitalization_day = hospitalization_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospitalization_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospitalization_day" do
    assert_difference('HospitalizationDay.count') do
      post :create, hospitalization_day: { adverse_event_id: @hospitalization_day.adverse_event_id, date: @hospitalization_day.date, price: @hospitalization_day.price, qty: @hospitalization_day.qty, service_id: @hospitalization_day.service_id, subtotal: @hospitalization_day.subtotal }
    end

    assert_redirected_to hospitalization_day_path(assigns(:hospitalization_day))
  end

  test "should show hospitalization_day" do
    get :show, id: @hospitalization_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospitalization_day
    assert_response :success
  end

  test "should update hospitalization_day" do
    patch :update, id: @hospitalization_day, hospitalization_day: { adverse_event_id: @hospitalization_day.adverse_event_id, date: @hospitalization_day.date, price: @hospitalization_day.price, qty: @hospitalization_day.qty, service_id: @hospitalization_day.service_id, subtotal: @hospitalization_day.subtotal }
    assert_redirected_to hospitalization_day_path(assigns(:hospitalization_day))
  end

  test "should destroy hospitalization_day" do
    assert_difference('HospitalizationDay.count', -1) do
      delete :destroy, id: @hospitalization_day
    end

    assert_redirected_to hospitalization_days_path
  end
end
