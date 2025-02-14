require "test_helper"

class CheckHomepageTest < ActionDispatch::IntegrationTest
  test "the homepage displays the Rails version" do
    get '/'
    assert_response :success
    assert_text "Rails version: #{Rails::VERSION::STRING}"
  end
end
