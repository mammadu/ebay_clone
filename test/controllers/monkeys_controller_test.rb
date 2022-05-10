require "test_helper"

class MonkeysControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get monkeys_page_url
    assert_response :success
  end
end
