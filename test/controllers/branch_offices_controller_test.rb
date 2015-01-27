require 'test_helper'

class BranchOfficesControllerTest < ActionController::TestCase
  setup do
    @branch_office = branch_offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:branch_offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branch_office" do
    assert_difference('BranchOffice.count') do
      post :create, branch_office: { city: @branch_office.city, name: @branch_office.name }
    end

    assert_redirected_to branch_office_path(assigns(:branch_office))
  end

  test "should show branch_office" do
    get :show, id: @branch_office
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branch_office
    assert_response :success
  end

  test "should update branch_office" do
    patch :update, id: @branch_office, branch_office: { city: @branch_office.city, name: @branch_office.name }
    assert_redirected_to branch_office_path(assigns(:branch_office))
  end

  test "should destroy branch_office" do
    assert_difference('BranchOffice.count', -1) do
      delete :destroy, id: @branch_office
    end

    assert_redirected_to branch_offices_path
  end
end
