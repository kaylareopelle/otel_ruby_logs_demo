# frozen_string_literal: true

ENV["OTEL_LOGS_EXPORTER"] = "console"
ENV["OTEL_TRACES_EXPORTER"] = "none"
ENV["OTEL_METRICS_EXPORTER"] = "none"
ENV["RAILS_ENV"] ||= "test"

require_relative "../config/environment"
require "rails/test_help"
require "opentelemetry-test-helpers"

LOGS_EXPORTER = OpenTelemetry::SDK::Logs::Export::InMemoryLogRecordExporter.new
LOG_RECORD_PROCESSOR = OpenTelemetry::SDK::Logs::Export::SimpleLogRecordProcessor.new(LOGS_EXPORTER)

OpenTelemetry::SDK.configure do |c|
  c.error_handler = ->(exception:, message:) { raise(exception || message) }
  c.logger = Logger.new($stderr, level: ENV.fetch('OTEL_LOG_LEVEL', 'fatal').to_sym)
  c.add_log_record_processor LOG_RECORD_PROCESSOR
end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
