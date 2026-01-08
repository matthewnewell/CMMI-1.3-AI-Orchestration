require 'test_helper'

class SpecificGoalsControllerTest < ActionController::TestCase
  setup do
    @specific_goal = specific_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specific_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specific_goal" do
    assert_difference('SpecificGoal.count') do
      post :create, specific_goal: { description: @specific_goal.description, name: @specific_goal.name, process_area_id: @specific_goal.process_area_id }
    end

    assert_redirected_to specific_goal_path(assigns(:specific_goal))
  end

  test "should show specific_goal" do
    get :show, id: @specific_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specific_goal
    assert_response :success
  end

  test "should update specific_goal" do
    patch :update, id: @specific_goal, specific_goal: { description: @specific_goal.description, name: @specific_goal.name, process_area_id: @specific_goal.process_area_id }
    assert_redirected_to specific_goal_path(assigns(:specific_goal))
  end

  test "should destroy specific_goal" do
    assert_difference('SpecificGoal.count', -1) do
      delete :destroy, id: @specific_goal
    end

    assert_redirected_to specific_goals_path
  end
end
