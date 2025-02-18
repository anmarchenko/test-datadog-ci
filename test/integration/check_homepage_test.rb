require "test_helper"

class CheckHomepageTest < ActionDispatch::IntegrationTest
  test "the homepage displays the Rails version" do
    get '/'
    assert_response :success
    assert_select "body > ul:nth-child(2) > li:nth-child(1)", "Rails version: #{Rails::VERSION::STRING}"
  end
end
