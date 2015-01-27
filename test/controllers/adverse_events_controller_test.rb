require 'test_helper'

class AdverseEventsControllerTest < ActionController::TestCase
  setup do
    @adverse_event = adverse_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adverse_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adverse_event" do
    assert_difference('AdverseEvent.count') do
      post :create, adverse_event: { branch_office_id: @adverse_event.branch_office_id, description: @adverse_event.description, event_id: @adverse_event.event_id, patient_id: @adverse_event.patient_id, pregnant: @adverse_event.pregnant, reason_admission: @adverse_event.reason_admission, time: @adverse_event.time }
    end

    assert_redirected_to adverse_event_path(assigns(:adverse_event))
  end

  test "should show adverse_event" do
    get :show, id: @adverse_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adverse_event
    assert_response :success
  end

  test "should update adverse_event" do
    patch :update, id: @adverse_event, adverse_event: { branch_office_id: @adverse_event.branch_office_id, description: @adverse_event.description, event_id: @adverse_event.event_id, patient_id: @adverse_event.patient_id, pregnant: @adverse_event.pregnant, reason_admission: @adverse_event.reason_admission, time: @adverse_event.time }
    assert_redirected_to adverse_event_path(assigns(:adverse_event))
  end

  test "should destroy adverse_event" do
    assert_difference('AdverseEvent.count', -1) do
      delete :destroy, id: @adverse_event
    end

    assert_redirected_to adverse_events_path
  end
end
