require 'test_helper'

class GenericPracticeElaborationsControllerTest < ActionController::TestCase
  setup do
    @generic_practice_elaboration = generic_practice_elaborations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generic_practice_elaborations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generic_practice_elaboration" do
    assert_difference('GenericPracticeElaboration.count') do
      post :create, generic_practice_elaboration: { generic_practice_id: @generic_practice_elaboration.generic_practice_id, gp_elaboration: @generic_practice_elaboration.gp_elaboration, process_area_id: @generic_practice_elaboration.process_area_id }
    end

    assert_redirected_to generic_practice_elaboration_path(assigns(:generic_practice_elaboration))
  end

  test "should show generic_practice_elaboration" do
    get :show, id: @generic_practice_elaboration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generic_practice_elaboration
    assert_response :success
  end

  test "should update generic_practice_elaboration" do
    patch :update, id: @generic_practice_elaboration, generic_practice_elaboration: { generic_practice_id: @generic_practice_elaboration.generic_practice_id, gp_elaboration: @generic_practice_elaboration.gp_elaboration, process_area_id: @generic_practice_elaboration.process_area_id }
    assert_redirected_to generic_practice_elaboration_path(assigns(:generic_practice_elaboration))
  end

  test "should destroy generic_practice_elaboration" do
    assert_difference('GenericPracticeElaboration.count', -1) do
      delete :destroy, id: @generic_practice_elaboration
    end

    assert_redirected_to generic_practice_elaborations_path
  end
end
