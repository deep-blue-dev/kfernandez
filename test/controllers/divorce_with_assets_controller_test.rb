require 'test_helper'

class DivorceWithAssetsControllerTest < ActionController::TestCase
  setup do
    @divorce_with_asset = divorce_with_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:divorce_with_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create divorce_with_asset" do
    assert_difference('DivorceWithAsset.count') do
      post :create, divorce_with_asset: { dissolution: @divorce_with_asset.dissolution, filing: @divorce_with_asset.filing, husband_address: @divorce_with_asset.husband_address, husband_city: @divorce_with_asset.husband_city, husband_email: @divorce_with_asset.husband_email, husband_fax: @divorce_with_asset.husband_fax, husband_name: @divorce_with_asset.husband_name, husband_phone: @divorce_with_asset.husband_phone, husband_state: @divorce_with_asset.husband_state, husband_zip: @divorce_with_asset.husband_zip, jurisdiction: @divorce_with_asset.jurisdiction, marriage_date: @divorce_with_asset.marriage_date, separation_date: @divorce_with_asset.separation_date, wife_address: @divorce_with_asset.wife_address, wife_city: @divorce_with_asset.wife_city, wife_email: @divorce_with_asset.wife_email, wife_fax: @divorce_with_asset.wife_fax, wife_name: @divorce_with_asset.wife_name, wife_phone: @divorce_with_asset.wife_phone, wife_state: @divorce_with_asset.wife_state, wife_zip: @divorce_with_asset.wife_zip }
    end

    assert_redirected_to divorce_with_asset_path(assigns(:divorce_with_asset))
  end

  test "should show divorce_with_asset" do
    get :show, id: @divorce_with_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @divorce_with_asset
    assert_response :success
  end

  test "should update divorce_with_asset" do
    patch :update, id: @divorce_with_asset, divorce_with_asset: { dissolution: @divorce_with_asset.dissolution, filing: @divorce_with_asset.filing, husband_address: @divorce_with_asset.husband_address, husband_city: @divorce_with_asset.husband_city, husband_email: @divorce_with_asset.husband_email, husband_fax: @divorce_with_asset.husband_fax, husband_name: @divorce_with_asset.husband_name, husband_phone: @divorce_with_asset.husband_phone, husband_state: @divorce_with_asset.husband_state, husband_zip: @divorce_with_asset.husband_zip, jurisdiction: @divorce_with_asset.jurisdiction, marriage_date: @divorce_with_asset.marriage_date, separation_date: @divorce_with_asset.separation_date, wife_address: @divorce_with_asset.wife_address, wife_city: @divorce_with_asset.wife_city, wife_email: @divorce_with_asset.wife_email, wife_fax: @divorce_with_asset.wife_fax, wife_name: @divorce_with_asset.wife_name, wife_phone: @divorce_with_asset.wife_phone, wife_state: @divorce_with_asset.wife_state, wife_zip: @divorce_with_asset.wife_zip }
    assert_redirected_to divorce_with_asset_path(assigns(:divorce_with_asset))
  end

  test "should destroy divorce_with_asset" do
    assert_difference('DivorceWithAsset.count', -1) do
      delete :destroy, id: @divorce_with_asset
    end

    assert_redirected_to divorce_with_assets_path
  end
end
