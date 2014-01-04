require 'test_helper'

class ACategoriesControllerTest < ActionController::TestCase
  setup do
    @a_category = a_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_category" do
    assert_difference('ACategory.count') do
      post :create, a_category: { display: @a_category.display, name: @a_category.name }
    end

    assert_redirected_to a_category_path(assigns(:a_category))
  end

  test "should show a_category" do
    get :show, id: @a_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_category
    assert_response :success
  end

  test "should update a_category" do
    put :update, id: @a_category, a_category: { display: @a_category.display, name: @a_category.name }
    assert_redirected_to a_category_path(assigns(:a_category))
  end

  test "should destroy a_category" do
    assert_difference('ACategory.count', -1) do
      delete :destroy, id: @a_category
    end

    assert_redirected_to a_categories_path
  end
end
