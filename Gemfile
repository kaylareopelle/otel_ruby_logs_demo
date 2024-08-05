source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.8"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 2.0"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.4"

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

# OpenTelemetry gems with logging-related enhancements
gem 'opentelemetry-api',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby',
  branch: 'log-record-processor3',
  glob: 'api/*.gemspec'

gem 'opentelemetry-sdk',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby',
  branch: 'log-record-processor3',
  glob: 'sdk/*.gemspec'

# Unreleased, logs-specific gems
gem 'opentelemetry-logs-api',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby',
  branch: 'log-record-processor3',
  glob: 'logs_api/*.gemspec'

gem 'opentelemetry-logs-sdk',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby',
  branch: 'log-record-processor3',
  glob: 'logs_sdk/*.gemspec'

# OTLP Exporters with logging enhancements
gem 'opentelemetry-exporter-otlp',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby',
  branch: 'log-record-processor3',
  glob: 'exporter/otlp/*.gemspec'

gem 'opentelemetry-exporter-otlp-logs',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby',
  branch: 'log-record-processor3',
  glob: 'exporter/otlp-logs/*.gemspec'

# Instrumentation and Ruby Logger bridge
gem 'opentelemetry-instrumentation-all',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby-contrib',
  branch: 'logger-instrumentation',
  glob: 'instrumentation/all/*.gemspec'

gem 'opentelemetry-instrumentation-logger',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby-contrib',
  branch: 'logger-instrumentation',
  glob: 'instrumentation/logger/*.gemspec'
