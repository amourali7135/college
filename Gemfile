source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
# Duh
ruby '3.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.3.3'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# Disabling this because javascript functions are not loading properly.
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

gem 'devise'

gem 'autoprefixer-rails', '10.2.5'
gem 'font-awesome-sass'
gem 'simple_form'
# Run in root to find issues against Rails best practices!  Clutch.
gem "rails_best_practices"
# Prevent dangerous migrations.
# gem "strong_migrations"
# Memory usage in app.  For development only though?  Check when on Heroku.  
gem 'memory_profiler'
gem 'stackprof'
# For image uploads...for now at least.
gem 'cloudinary'
# For easy active storage + photo validations 
gem 'active_storage_validations'
# To try and get this shit working.  
gem 'htmlbeautifier'
# Replace stupid other linter
gem 'erb_lint'
# For saving favorite programs and applications.
gem 'acts_as_votable'
# For tagging important things like categories for easier search
gem 'acts-as-taggable-on', '~> 9.0'
# For multi-select functionality...find a select2 alternative that works later on.
# gem...
# For basic search functionality on the program model.  Switch to ES later if advanced features needed.
gem 'pg_search'
# For geocoding + better search results for users
gem "geocoder"
# Pagination experiment.
gem 'pagy'
# Added after rails 7 upgrade because it's optional now
gem "sprockets-rails"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Fixing unmet peer dependency for prettier shit
gem "prettier"
# Added after rails 7 upgrade to get bootstrap working ala Le Wagon Template
gem "sassc-rails"



group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', require: false
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Makes spring work better by listening for changes.
  gem 'spring-watcher-listen'
  # For having a better error page in development with console.
  gem "better_errors"
  # For tracing variables that lead to app crashing in better errors screen.
  gem "binding_of_caller"
  # Fasterer was installed via CLI.  Just type fasterer into the Terminal and it'll launch.  
  # Find N +1 queries more efficiently
  gem 'bullet'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers'
  # Use fake data in app.
  gem "faker"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem "cssbundling-rails", "~> 1.1"
