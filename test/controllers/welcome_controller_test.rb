require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    p "here I start the welcome test"
    p "My PID is #{Process.pid}"
    p "Active trace is #{Datadog::Tracing.active_trace.id}"
    get root_url
    assert_response :success
    p "here I end the test"
  end
end
