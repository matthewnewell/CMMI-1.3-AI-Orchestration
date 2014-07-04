require 'test_helper'

class SpecificPracticesControllerTest < ActionController::TestCase
  setup do
    @specific_practice = specific_practices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specific_practices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specific_practice" do
    assert_difference('SpecificPractice.count') do
      post :create, specific_practice: { description: @specific_practice.description, name: @specific_practice.name, process_area_id: @specific_practice.process_area_id, specific_goal_id: @specific_practice.specific_goal_id, summary: @specific_practice.summary }
    end

    assert_redirected_to specific_practice_path(assigns(:specific_practice))
  end

  test "should show specific_practice" do
    get :show, id: @specific_practice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specific_practice
    assert_response :success
  end

  test "should update specific_practice" do
    patch :update, id: @specific_practice, specific_practice: { description: @specific_practice.description, name: @specific_practice.name, process_area_id: @specific_practice.process_area_id, specific_goal_id: @specific_practice.specific_goal_id, summary: @specific_practice.summary }
    assert_redirected_to specific_practice_path(assigns(:specific_practice))
  end

  test "should destroy specific_practice" do
    assert_difference('SpecificPractice.count', -1) do
      delete :destroy, id: @specific_practice
    end

    assert_redirected_to specific_practices_path
  end
end
