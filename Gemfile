source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
# Use Devise for authentication
gem 'devise'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Use bootstrap for assets and views
gem 'bootstrap', '~> 4.4.1'
gem 'sprockets-rails', '~> 2.3.3'
# Use devise-i18n and device-bootstrap-views for devise views
gem 'devise-i18n'
gem 'devise-bootstrap-views'
# Use jQuery to utilize javascript
gem 'jquery-rails'
# Use Simple Form to style forms
gem 'simple_form'
# Use Font Awesome for assets and views
gem 'font_awesome5_rails'
# Use Popper to utilize bootstrap modals and tooltips
gem 'popper_js'
# Use Themify for icons in views
gem 'themify-icons-rails', github: 'scratch-soft/themify-icons-rails'
# Use Animate for views
gem "animate-rails"
gem 'carrierwave', '~> 2.0'
gem 'mini_magick'




group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Use for bahavioral and unit testing
  gem 'rspec-rails'
  # Use FactoryBot and FFaker to generate randomized model instances for testing
  gem 'factory_bot_rails'
  gem 'ffaker'
  # Use shoulda, shoulda-matchers and valid_attribute to test model validation
  gem 'shoulda'
  gem 'shoulda-matchers'
  gem 'valid_attribute'
  # Use for debuging and modifying current system state
  gem 'pry-rails'
  # Use to refresh views as changes are safed
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'rails-controller-testing'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  # Use to sanitize the test database
  gem 'database_cleaner-active_record'
  gem 'coveralls', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
