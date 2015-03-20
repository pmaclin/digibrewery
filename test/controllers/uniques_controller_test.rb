require 'test_helper'

class UniquesControllerTest < ActionController::TestCase
  setup do
    @unique = uniques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uniques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unique" do
    assert_difference('Unique.count') do
      post :create, unique: { batch_id: @unique.batch_id, number: @unique.number }
    end

    assert_redirected_to unique_path(assigns(:unique))
  end

  test "should show unique" do
    get :show, id: @unique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unique
    assert_response :success
  end

  test "should update unique" do
    patch :update, id: @unique, unique: { batch_id: @unique.batch_id, number: @unique.number }
    assert_redirected_to unique_path(assigns(:unique))
  end

  test "should destroy unique" do
    assert_difference('Unique.count', -1) do
      delete :destroy, id: @unique
    end

    assert_redirected_to uniques_path
  end
end
