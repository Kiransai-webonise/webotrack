require "test_helper"

module WeboTrack
  class AssetsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get assets_new_url
      assert_response :success
    end

    test "should get create" do
      get assets_create_url
      assert_response :success
    end
  end
end
