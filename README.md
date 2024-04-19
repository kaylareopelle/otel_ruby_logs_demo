# Experimental! OpenTelemetry Logs for Ruby Demo

This is a minimal [Rails](https://rubyonrails.org/) 7.0 / [Ruby](https://github.com/ruby/ruby) 3.2 application demonstrating how to use an experimental implementation of [OpenTelemetry logs](https://opentelemetry.io/docs/specs/otel/logs/) for Ruby.

PRs for the gems used in this example can be found at:
* [kaylareopelle/opentelemetry-ruby](https://github.com/kaylareopelle/opentelemetry-ruby/pull/6)
* [kaylareopelle/opentelemetry-ruby-contrib](https://github.com/kaylareopelle/opentelemetry-ruby-contrib/pull/1)

There are three key files in this repository:
* [`Gemfile`](https://github.com/kaylareopelle/otel_ruby_logs_demo/blob/main/Gemfile): Includes the gems installed from the necessary git, branch, and blob sources
* [`config/initializers/opentelemetry.rb`](https://github.com/kaylareopelle/otel_ruby_logs_demo/blob/main/config/initializers/opentelemetry.rb): Configures OpenTelemetry to use the experimental logs
* [`app/controllers/test_controller.rb`](https://github.com/kaylareopelle/otel_ruby_logs_demo/blob/main/app/controllers/test_controller.rb): `TestController#index` demonstrates how to emit your own logs and how indpendent Ruby Loggers work with auto-instrumentation

If you'd like to see just the `Gemfile` and an example `opentelemetry.rb` initializer, [visit this gist](https://gist.github.com/kaylareopelle/76079747c1a7528449670b8bd1c78893).

### Prerequisites:
* Ruby 3.2

### Setup:
* Fork and clone the repo locally
  * Fork the repository inside GitHub
  * Run `git clone git@github.com:<gh username>/newrelic-ruby-agent.git` locally
  * `cd` into your new repository
* Run `bundle install` to install the gems for the application

### Running the app:
* Run: `bin/rails s`
* Visit: [localhost:3000](localhost:3000)
* See the OpenTelemetry logs in your console

If you'd like to see how logs would look with your observability vendor, update the `config/initializers/opentelemetry.rb` file to send the data to your vendor of choice.

### Contributions

If you have any problems with this example, please feel free to open a PR or an issue in this repository. PRs and comments are also welcome on the experimental PRs mentioned above.

Reviews are also welcome on the [PRs related to logs in the opentelemetry-ruby repository.](https://github.com/open-telemetry/opentelemetry-ruby/pulls?q=is%3Aopen+is%3Apr+logs) [Project status is available here.](https://github.com/open-telemetry/opentelemetry-ruby/projects/3)

