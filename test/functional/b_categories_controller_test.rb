require 'test_helper'

class BCategoriesControllerTest < ActionController::TestCase
  setup do
    @b_category = b_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_category" do
    assert_difference('BCategory.count') do
      post :create, b_category: { display: @b_category.display, name: @b_category.name }
    end

    assert_redirected_to b_category_path(assigns(:b_category))
  end

  test "should show b_category" do
    get :show, id: @b_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_category
    assert_response :success
  end

  test "should update b_category" do
    put :update, id: @b_category, b_category: { display: @b_category.display, name: @b_category.name }
    assert_redirected_to b_category_path(assigns(:b_category))
  end

  test "should destroy b_category" do
    assert_difference('BCategory.count', -1) do
      delete :destroy, id: @b_category
    end

    assert_redirected_to b_categories_path
  end
end
