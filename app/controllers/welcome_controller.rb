# frozen_string_literal: true

class WelcomeController < ApplicationController
  skip_forgery_protection
  layout false

  def index
    p "here I start the controller action"
    p "My PID is #{Process.pid}"
    p "My current thread is #{Thread.current}"
    p "Active trace is #{Datadog::Tracing.active_trace.id}"
    Datadog::Tracing.trace("welcome#index") do
      p "boo"
    end
    p "here I end the controller action"
  end
end
