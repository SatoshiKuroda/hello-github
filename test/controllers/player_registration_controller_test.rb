require 'test_helper'

class PlayerRegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get player_registration_index_url
    assert_response :success
  end

  test "should get form" do
    get player_registration_form_url
    assert_response :success
  end

  test "should get upload" do
    get player_registration_upload_url
    assert_response :success
  end

  test "should get download" do
    get player_registration_download_url
    assert_response :success
  end

end
