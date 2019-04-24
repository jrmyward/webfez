# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'

# assets
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

# attachments
# gem 'mini_racer', platforms: :ruby

# authentication
gem 'devise'

# authorization
gem 'pundit'

# caching

# cron
# gem 'whenever'

# csv / spreadsheet
# gem 'roo', '~> 2.7.0'

# database
gem 'pg', '>= 0.18', '< 2.0'

# logging
gem 'rails_semantic_logger'

# javascript
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks', '~> 5'

# oauth integrations
# gem 'omniauth-stripe-connect'

# performance
gem 'bootsnap', '>= 1.1.0', require: false

# queque
gem 'sidekiq'

# server
gem 'puma', '~> 3.7'
gem 'redis', '~> 4.0'

# services - third party
gem 'rollbar', '~>2.0'
gem 'stripe'
gem 'stripe_event'

# sitemap
# gem 'sitemap_generator'

# tools
gem 'awesome_print'
gem 'brakeman'
gem 'foreman'
gem 'pry-rails'

# views
gem 'bootstrap', '~> 4.1.3'
gem 'font-awesome-rails'
gem 'haml'
gem 'haml-rails'
gem 'simple_form'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'mailcatcher'
  gem 'pry-byebug'
  gem 'reek'
  gem 'rspec-rails', '>=3.5.2'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'selenium-webdriver'
end

group :development do
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.3', require: false
  gem 'guard', '>=2.5.2', require: false
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rack-livereload'
  gem 'rb-fsevent', require: false
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pundit-matchers'
  gem 'rspec-sidekiq'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'stripe-ruby-mock'
  gem 'vcr'
  gem 'webmock'
end
