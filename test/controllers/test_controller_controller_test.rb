require "test_helper"

class TestControllerControllerTest < ActionDispatch::IntegrationTest
  test "OTel LogRecord emitted for Rails logs" do
    get "/"

    assert_equal 200, status
    assert_emitted /Completed 200 OK in/
    assert_emitted /Processing by TestController#index as HTML/
  end

  test "OTel LogRecord emitted for custom Ruby Logger" do
    get "/"

    assert_equal 200, status
    assert_emitted /Reporting from Ruby Logger/
  end

  def assert_emitted(body_regex)
    emitted_log_records = LOGS_EXPORTER.emitted_log_records

    log_bodies = emitted_log_records.map(&:body)

    matches = log_bodies.select { |lb| lb.match?(body_regex) }
    refute_empty matches
  end
end
