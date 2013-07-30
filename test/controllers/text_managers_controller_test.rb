require 'test_helper'

class TextManagersControllerTest < ActionController::TestCase
  setup do
    @text_manager = text_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_manager" do
    assert_difference('TextManager.count') do
      post :create, text_manager: { description: @text_manager.description, name: @text_manager.name }
    end

    assert_redirected_to text_manager_path(assigns(:text_manager))
  end

  test "should show text_manager" do
    get :show, id: @text_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_manager
    assert_response :success
  end

  test "should update text_manager" do
    patch :update, id: @text_manager, text_manager: { description: @text_manager.description, name: @text_manager.name }
    assert_redirected_to text_manager_path(assigns(:text_manager))
  end

  test "should destroy text_manager" do
    assert_difference('TextManager.count', -1) do
      delete :destroy, id: @text_manager
    end

    assert_redirected_to text_managers_path
  end
end
