require 'test_helper'

class GenericGoalsControllerTest < ActionController::TestCase
  setup do
    @generic_goal = generic_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_goal" do
    assert_difference('GenericGoal.count') do
      post :create, generic_goal: { description: @generic_goal.description, name: @generic_goal.name }
    end

    assert_redirected_to generic_goal_path(assigns(:generic_goal))
  end

  test "should show generic_goal" do
    get :show, id: @generic_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_goal
    assert_response :success
  end

  test "should update generic_goal" do
    patch :update, id: @generic_goal, generic_goal: { description: @generic_goal.description, name: @generic_goal.name }
    assert_redirected_to generic_goal_path(assigns(:generic_goal))
  end

  test "should destroy generic_goal" do
    assert_difference('GenericGoal.count', -1) do
      delete :destroy, id: @generic_goal
    end

    assert_redirected_to generic_goals_path
  end
end
