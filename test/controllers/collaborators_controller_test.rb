require 'test_helper'

class CollaboratorsControllerTest < ActionController::TestCase
  setup do
    @collaborator = collaborators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collaborators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collaborator" do
    assert_difference('Collaborator.count') do
      post :create, collaborator: {  }
    end

    assert_redirected_to collaborator_path(assigns(:collaborator))
  end

  test "should show collaborator" do
    get :show, id: @collaborator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collaborator
    assert_response :success
  end

  test "should update collaborator" do
    patch :update, id: @collaborator, collaborator: {  }
    assert_redirected_to collaborator_path(assigns(:collaborator))
  end

  test "should destroy collaborator" do
    assert_difference('Collaborator.count', -1) do
      delete :destroy, id: @collaborator
    end

    assert_redirected_to collaborators_path
  end
end
