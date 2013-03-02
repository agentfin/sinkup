require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { age: @user.age, bio: @user.bio, dive_count: @user.dive_count, diver_level: @user.diver_level, diver_type: @user.diver_type, email: @user.email, hometown: @user.hometown, pic_url: @user.pic_url, twitter_handle: @user.twitter_handle, username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { age: @user.age, bio: @user.bio, dive_count: @user.dive_count, diver_level: @user.diver_level, diver_type: @user.diver_type, email: @user.email, hometown: @user.hometown, pic_url: @user.pic_url, twitter_handle: @user.twitter_handle, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
