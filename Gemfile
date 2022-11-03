source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# MA: Debugging 'fly deploy' issues
#> [stage-3 7/7] RUN bin/rails fly:build:
#20 2.482 rails aborted!
#20 2.483 LoadError: cannot load such file -- sassc
# MA: You can put the gem 'sassc-rails' line before the gem 'rails' line in your Gemfile as a workaround. [https://github.com/sass/sassc-rails/issues/114]
gem 'sassc-rails'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# MA: A modern CSS framework based on Flexbox [https://rubygems.org/gems/bulma-rails]
# gem 'bulma-rails', '~> 0.9.4'

# MA: The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com [https://rubygems.org/gems/bootstrap]
# gem 'bootstrap', '~> 5.2', '>= 5.2.2'

# MA: Forms made easy! [https://rubygems.org/gems/simple_form]
gem 'simple_form', '~> 5.1'

# MA: This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application. [https://rubygems.org/gems/jquery-rails]
# gem 'jquery-rails', '~> 4.5'

# MA: jquery datatables for rails [https://rubygems.org/gems/jquery-datatables-rails]
# gem 'jquery-datatables-rails', '~> 3.4'

# MA: Ransack is the successor to the MetaSearch gem. It improves and expands upon MetaSearch's functionality, but does not have a 100%-compatible API. [https://rubygems.org/gems/ransack]
gem 'ransack', '~> 3.2', '>= 3.2.1'

# MA: Median and percentile for Active Record, Mongoid, arrays, and hashes [https://rubygems.org/gems/active_median]
gem 'active_median', '~> 0.3.3'

# MA: Create beautiful JavaScript charts with one line of Ruby
gem 'chartkick', '~> 4.2', '>= 4.2.1'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  # MA: Guard is a command line tool to easily handle events on file system modifications. [https://rubygems.org/gems/guard]
  # gem 'guard', '~> 2.18'
  # MA: Guard::LiveReload automatically reloads your browser when 'view' files are modified. [https://rubygems.org/gems/guard-livereload]
  # gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false

  # MA: Provides a better error page for Rails and other Rack apps. [https://rubygems.org/gems/better_errors]
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
