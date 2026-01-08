require 'test_helper'

class ProcessAreaCategoriesControllerTest < ActionController::TestCase
  setup do
    @process_area_category = process_area_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:process_area_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create process_area_category" do
    assert_difference('ProcessAreaCategory.count') do
      post :create, process_area_category: { description: @process_area_category.description, name: @process_area_category.name }
    end

    assert_redirected_to process_area_category_path(assigns(:process_area_category))
  end

  test "should show process_area_category" do
    get :show, id: @process_area_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @process_area_category
    assert_response :success
  end

  test "should update process_area_category" do
    patch :update, id: @process_area_category, process_area_category: { description: @process_area_category.description, name: @process_area_category.name }
    assert_redirected_to process_area_category_path(assigns(:process_area_category))
  end

  test "should destroy process_area_category" do
    assert_difference('ProcessAreaCategory.count', -1) do
      delete :destroy, id: @process_area_category
    end

    assert_redirected_to process_area_categories_path
  end
end
