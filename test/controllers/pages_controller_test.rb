require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get search" do
    get pages_search_url
    assert_response :success
  end
end
