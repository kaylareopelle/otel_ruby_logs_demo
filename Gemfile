source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma"
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :test do
  gem 'minitest'
  gem 'opentelemetry-test-helpers'
  gem 'rack-test'
end

gem 'opentelemetry-sdk'
gem 'opentelemetry-logs-sdk'
gem 'opentelemetry-exporter-otlp'
gem 'opentelemetry-exporter-otlp-logs'
gem 'opentelemetry-instrumentation-all'
gem 'opentelemetry-instrumentation-logger'