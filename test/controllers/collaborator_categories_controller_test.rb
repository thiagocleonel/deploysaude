require 'test_helper'

class CollaboratorCategoriesControllerTest < ActionController::TestCase
  setup do
    @collaborator_category = collaborator_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collaborator_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collaborator_category" do
    assert_difference('CollaboratorCategory.count') do
      post :create, collaborator_category: {  }
    end

    assert_redirected_to collaborator_category_path(assigns(:collaborator_category))
  end

  test "should show collaborator_category" do
    get :show, id: @collaborator_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collaborator_category
    assert_response :success
  end

  test "should update collaborator_category" do
    patch :update, id: @collaborator_category, collaborator_category: {  }
    assert_redirected_to collaborator_category_path(assigns(:collaborator_category))
  end

  test "should destroy collaborator_category" do
    assert_difference('CollaboratorCategory.count', -1) do
      delete :destroy, id: @collaborator_category
    end

    assert_redirected_to collaborator_categories_path
  end
end
