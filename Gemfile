source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.8"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.6"

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

gem 'opentelemetry-sdk', '~> 1.9'
gem 'opentelemetry-logs-sdk'
gem 'opentelemetry-exporter-otlp'
gem 'opentelemetry-exporter-otlp-logs'

# Instrumentation and Ruby Logger bridge
gem 'opentelemetry-instrumentation-all',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby-contrib',
  branch: 'logger-instrumentation',
  glob: 'instrumentation/all/*.gemspec'

gem 'opentelemetry-instrumentation-logger',
  git: 'https://github.com/kaylareopelle/opentelemetry-ruby-contrib',
  branch: 'logger-instrumentation',
  glob: 'instrumentation/logger/*.gemspec'
