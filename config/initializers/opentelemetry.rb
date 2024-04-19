# frozen_string_literal: true

require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'
require 'opentelemetry/exporter/otlp_logs'
require 'opentelemetry/instrumentation/all'

# The current value for ENV['OTEL_LOGS_EXPORTER'] exports logs via OTLP
# and prints OTel logs to the console. Valid options include:
# 'otlp', 'console', 'otlp,console'
ENV['OTEL_LOGS_EXPORTER'] = 'otlp,console'
ENV['OTEL_SERVICE_NAME'] = 'Logs Demo - OTel Ruby Agent'

OpenTelemetry::SDK.configure do |c|
  # c.use_all # enables all instrumentation!
  c.use('OpenTelemetry::Instrumentation::Logger')
  c.use('OpenTelemetry::Instrumentation::ActiveSupport')
  c.use('OpenTelemetry::Instrumentation::Rack')
  c.use('OpenTelemetry::Instrumentation::ActionPack')
  c.use('OpenTelemetry::Instrumentation::ActiveRecord')
  c.use('OpenTelemetry::Instrumentation::ActionView')
  c.use('OpenTelemetry::Instrumentation::ConcurrentRuby')
  c.use('OpenTelemetry::Instrumentation::Net::HTTP')
end

APP_LOGGER = OpenTelemetry.logger_provider.logger(name: 'APP_LOGGER')
