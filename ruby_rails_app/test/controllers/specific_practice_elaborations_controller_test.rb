require 'test_helper'

class SpecificPracticeElaborationsControllerTest < ActionController::TestCase
  setup do
    @specific_practice_elaboration = specific_practice_elaborations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specific_practice_elaborations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specific_practice_elaboration" do
    assert_difference('SpecificPracticeElaboration.count') do
      post :create, specific_practice_elaboration: { process_area_id: @specific_practice_elaboration.process_area_id, sp_elaboration: @specific_practice_elaboration.sp_elaboration, specific_practice_id: @specific_practice_elaboration.specific_practice_id }
    end

    assert_redirected_to specific_practice_elaboration_path(assigns(:specific_practice_elaboration))
  end

  test "should show specific_practice_elaboration" do
    get :show, id: @specific_practice_elaboration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specific_practice_elaboration
    assert_response :success
  end

  test "should update specific_practice_elaboration" do
    patch :update, id: @specific_practice_elaboration, specific_practice_elaboration: { process_area_id: @specific_practice_elaboration.process_area_id, sp_elaboration: @specific_practice_elaboration.sp_elaboration, specific_practice_id: @specific_practice_elaboration.specific_practice_id }
    assert_redirected_to specific_practice_elaboration_path(assigns(:specific_practice_elaboration))
  end

  test "should destroy specific_practice_elaboration" do
    assert_difference('SpecificPracticeElaboration.count', -1) do
      delete :destroy, id: @specific_practice_elaboration
    end

    assert_redirected_to specific_practice_elaborations_path
  end
end
