require "test_helper"

class PrototypesControllerTest < ActionDispatch::IntegrationTest
  test "should get indexx" do
    get prototypes_indexx_url
    assert_response :success
  end
end
