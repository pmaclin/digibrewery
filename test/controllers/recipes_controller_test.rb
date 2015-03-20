require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { brewery_name: @recipe.brewery_name, description: @recipe.description, flav_profile: @recipe.flav_profile, label: @recipe.label, name: @recipe.name, recipe_type: @recipe.recipe_type, style_id_id: @recipe.style_id_id, user_id_id: @recipe.user_id_id }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe
    assert_response :success
  end

  test "should update recipe" do
    patch :update, id: @recipe, recipe: { brewery_name: @recipe.brewery_name, description: @recipe.description, flav_profile: @recipe.flav_profile, label: @recipe.label, name: @recipe.name, recipe_type: @recipe.recipe_type, style_id_id: @recipe.style_id_id, user_id_id: @recipe.user_id_id }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end
