require "test_helper"

module WeboTrack
  class WebousersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get webousers_new_url
      assert_response :success
    end

    test "should get create" do
      get webousers_create_url
      assert_response :success
    end
  end
end
