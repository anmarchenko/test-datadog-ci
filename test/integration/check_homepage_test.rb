require "test_helper"

class CheckHomepageTest < ActionDispatch::IntegrationTest
  test "the homepage displays the Rails version" do
    p "here I start the check homepage test"
    p "My PID is #{Process.pid}"
    p "My current thread is #{Thread.current}"
    p "Active trace is #{Datadog::Tracing.active_trace.id}"
    get '/'
    assert_response :success
    assert_select "body > ul:nth-child(2) > li:nth-child(1)", "Rails version: #{Rails::VERSION::STRING}"
    p "here I end the test"
  end
end
