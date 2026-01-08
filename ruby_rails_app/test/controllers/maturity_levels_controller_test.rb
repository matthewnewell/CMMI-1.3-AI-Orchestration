require 'test_helper'

class MaturityLevelsControllerTest < ActionController::TestCase
  setup do
    @maturity_level = maturity_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maturity_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maturity_level" do
    assert_difference('MaturityLevel.count') do
      post :create, maturity_level: { description: @maturity_level.description, name: @maturity_level.name }
    end

    assert_redirected_to maturity_level_path(assigns(:maturity_level))
  end

  test "should show maturity_level" do
    get :show, id: @maturity_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maturity_level
    assert_response :success
  end

  test "should update maturity_level" do
    patch :update, id: @maturity_level, maturity_level: { description: @maturity_level.description, name: @maturity_level.name }
    assert_redirected_to maturity_level_path(assigns(:maturity_level))
  end

  test "should destroy maturity_level" do
    assert_difference('MaturityLevel.count', -1) do
      delete :destroy, id: @maturity_level
    end

    assert_redirected_to maturity_levels_path
  end
end
