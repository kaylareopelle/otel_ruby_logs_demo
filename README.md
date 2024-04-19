# Experimental! OpenTelemetry Logs for Ruby Demo

This is a minimal Rails 7.0 / Ruby 3.2 application demonstrating how to use an experimental implementation of OpenTelemetry logs for Ruby.

The source code for the gems installed can be found at:
* [kaylareopelle/opentelemetry-ruby](https://github.com/kaylareopelle/opentelemetry-ruby/pull/6)
* [kaylareopelle/opentelemetry-ruby-contrib](https://github.com/kaylareopelle/opentelemetry-ruby-contrib/pull/1)

There are three key files in this repository:
* `Gemfile`: Includes the gems installed from the necessary git, branch, and blob sources
* `config/initializers/opentelemetry.rb`: Configures OpenTelemetry to use the experimental logs
* `app/controllers/test_controller.rb`: TestController#index demonstrates how to emit your own logs and how indpendent Ruby Loggers work with auto-instrumentation

If you'd like to see just the Gemfile and an example opentelemetry.rb initializer, [visit this gist](https://gist.github.com/kaylareopelle/76079747c1a7528449670b8bd1c78893).

Prerequisites:
* Ruby 3.2

Setup:
* Run `bundle install` to install the gems for the application

Running the app:
* Run: `bin/rails s`
* Visit: [localhost:3000](localhost:3000)
* See the OpenTelemetry logs in your console

If you'd like to see how logs would look with your observability vendor, update the `config/initializers/opentelemetry.rb` file to send the data to your vendor of choice.

