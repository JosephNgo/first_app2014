require 'test_helper'

class CrewClassesControllerTest < ActionController::TestCase
  setup do
    @crew_class = crew_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crew_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crew_class" do
    assert_difference('CrewClass.count') do
      post :create, crew_class: { class_desc: @crew_class.class_desc, item_id: @crew_class.item_id }
    end

    assert_redirected_to crew_class_path(assigns(:crew_class))
  end

  test "should show crew_class" do
    get :show, id: @crew_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crew_class
    assert_response :success
  end

  test "should update crew_class" do
    patch :update, id: @crew_class, crew_class: { class_desc: @crew_class.class_desc, item_id: @crew_class.item_id }
    assert_redirected_to crew_class_path(assigns(:crew_class))
  end

  test "should destroy crew_class" do
    assert_difference('CrewClass.count', -1) do
      delete :destroy, id: @crew_class
    end

    assert_redirected_to crew_classes_path
  end
end
