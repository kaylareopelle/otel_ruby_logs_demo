# Experimental! OpenTelemetry Logs for Ruby Demo

> [!IMPORTANT]
> **Update 2024-12-05:** Some of the gems referenced in this example are now available
> on RubyGems, so you no longer need to install them from source.
> * `opentelemetry-logs-sdk`
> * `opentelemetry-sdk` version 1.6+
> * `opentelemetry-exporter-otlp-logs`
>
> The gems with `api` in the name should be installed automatically where needed.
> The `opentelemetry-instrumentation-*` gems referenced in this example have not been released.
> The example Gemfile has been updated to reflect what's needed.

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

### Example OpenTelemetry log:
```
#<struct OpenTelemetry::SDK::Logs::LogRecordData
 timestamp=2024-04-19 15:06:50.118496 -0700,
 observed_timestamp=2024-04-19 15:06:50.118496 -0700,
 trace_id="\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00",
 span_id="\x00\x00\x00\x00\x00\x00\x00\x00",
 trace_flags=#<OpenTelemetry::Trace::TraceFlags:0x0000000106a73580 @flags=0>,
 severity_text="INFO",
 severity_number=9,
 body="Instrumentation: OpenTelemetry::Instrumentation::Logger was successfully installed with the following options {}",
 resource=
  #<OpenTelemetry::SDK::Resources::Resource:0x0000000107b9c3c0
   @attributes=
    {"service.name"=>"Logs Demo - OTel Ruby Agent",
     "process.pid"=>91454,
     "process.command"=>"bin/rails",
     "process.runtime.name"=>"ruby",
     "process.runtime.version"=>"3.2.2",
     "process.runtime.description"=>"ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-darwin22]",
     "telemetry.sdk.name"=>"opentelemetry",
     "telemetry.sdk.language"=>"ruby",
     "telemetry.sdk.version"=>"1.4.1"}>,
 instrumentation_scope=#<struct OpenTelemetry::SDK::InstrumentationScope name="opentelemetry-instrumentation-logger", version="0.0.0">,
 attributes=nil,
 total_recorded_attributes=0>
```

### Contributions

If you have any problems with this example, please feel free to open a PR or an issue in this repository.
PRs and comments are also welcome on the experimental PRs mentioned above.

Reviews are also welcome on the [PRs related to logs in the opentelemetry-ruby repository.](https://github.com/open-telemetry/opentelemetry-ruby/pulls?q=is%3Aopen+is%3Apr+logs) [Project status is available here.](https://github.com/open-telemetry/opentelemetry-ruby/projects/3)

