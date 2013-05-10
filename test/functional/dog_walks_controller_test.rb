require 'test_helper'

class DogWalksControllerTest < ActionController::TestCase
  setup do
    @dog_walk = dog_walks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dog_walks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog_walk" do
    assert_difference('DogWalk.count') do
      post :create, dog_walk: { county: @dog_walk.county, directions: @dog_walk.directions, distance: @dog_walk.distance, town: @dog_walk.town }
    end

    assert_redirected_to dog_walk_path(assigns(:dog_walk))
  end

  test "should show dog_walk" do
    get :show, id: @dog_walk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog_walk
    assert_response :success
  end

  test "should update dog_walk" do
    put :update, id: @dog_walk, dog_walk: { county: @dog_walk.county, directions: @dog_walk.directions, distance: @dog_walk.distance, town: @dog_walk.town }
    assert_redirected_to dog_walk_path(assigns(:dog_walk))
  end

  test "should destroy dog_walk" do
    assert_difference('DogWalk.count', -1) do
      delete :destroy, id: @dog_walk
    end

    assert_redirected_to dog_walks_path
  end
end
