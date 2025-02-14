Datadog.configure do |c|
  # Add additional configuration here.
  # Activate integrations, change tracer settings, etc...
  c.service = 'test-datadog-ci'
  c.env = Rails.env
  c.version = '0.0.1'
end
