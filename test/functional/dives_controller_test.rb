require 'test_helper'

class DivesControllerTest < ActionController::TestCase
  setup do
    @dife = dives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dife" do
    assert_difference('Dive.count') do
      post :create, dife: { comment: @dife.comment, dive_date: @dife.dive_date, dive_rating: @dife.dive_rating, photo_link: @dife.photo_link, site_id: @dife.site_id, user_id: @dife.user_id }
    end

    assert_redirected_to dife_path(assigns(:dife))
  end

  test "should show dife" do
    get :show, id: @dife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dife
    assert_response :success
  end

  test "should update dife" do
    put :update, id: @dife, dife: { comment: @dife.comment, dive_date: @dife.dive_date, dive_rating: @dife.dive_rating, photo_link: @dife.photo_link, site_id: @dife.site_id, user_id: @dife.user_id }
    assert_redirected_to dife_path(assigns(:dife))
  end

  test "should destroy dife" do
    assert_difference('Dive.count', -1) do
      delete :destroy, id: @dife
    end

    assert_redirected_to dives_path
  end
end
