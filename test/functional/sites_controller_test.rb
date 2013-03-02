require 'test_helper'

class SitesControllerTest < ActionController::TestCase
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post :create, site: { depth: @site.depth, description: @site.description, difficulty: @site.difficulty, gps_lat: @site.gps_lat, gps_lon: @site.gps_lon, location: @site.location, sink_date: @site.sink_date, site_type: @site.site_type, sub_type: @site.sub_type }
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test "should show site" do
    get :show, id: @site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site
    assert_response :success
  end

  test "should update site" do
    put :update, id: @site, site: { depth: @site.depth, description: @site.description, difficulty: @site.difficulty, gps_lat: @site.gps_lat, gps_lon: @site.gps_lon, location: @site.location, sink_date: @site.sink_date, site_type: @site.site_type, sub_type: @site.sub_type }
    assert_redirected_to site_path(assigns(:site))
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete :destroy, id: @site
    end

    assert_redirected_to sites_path
  end
end
