require 'test_helper'

class GenericPracticesControllerTest < ActionController::TestCase
  setup do
    @generic_practice = generic_practices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_practices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_practice" do
    assert_difference('GenericPractice.count') do
      post :create, generic_practice: { description: @generic_practice.description, generic_goal_id: @generic_practice.generic_goal_id, name: @generic_practice.name, summary: @generic_practice.summary }
    end

    assert_redirected_to generic_practice_path(assigns(:generic_practice))
  end

  test "should show generic_practice" do
    get :show, id: @generic_practice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_practice
    assert_response :success
  end

  test "should update generic_practice" do
    patch :update, id: @generic_practice, generic_practice: { description: @generic_practice.description, generic_goal_id: @generic_practice.generic_goal_id, name: @generic_practice.name, summary: @generic_practice.summary }
    assert_redirected_to generic_practice_path(assigns(:generic_practice))
  end

  test "should destroy generic_practice" do
    assert_difference('GenericPractice.count', -1) do
      delete :destroy, id: @generic_practice
    end

    assert_redirected_to generic_practices_path
  end
end
