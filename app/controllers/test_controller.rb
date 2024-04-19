# frozen-string-literal: true

# TestController demonstrates ways to use OTel Logs
class TestController < ApplicationController
  def index
    # Manually emit a log from the OpenTelemetry Logger
    APP_LOGGER.on_emit(
      body: 'Reporting from APP_LOGGER.emit',
      severity_text: 'DEBUG',
      attributes: { 'test' => 'attribute' }
    )

    # Generate an app-specific Ruby Logger for auto-instrumentation
    logger = Logger.new($stdout)
    logger.debug('Reporting from Ruby Logger')

    render plain: 'Success'
  end
end
