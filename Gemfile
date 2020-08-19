# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.3", ">= 6.0.3.2"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 4.1"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem "folio", github: "sinfin/folio"
# gem 'folio', path: '../folio'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "turbolinks"
gem "dotenv-rails"
gem "autoprefixer-rails", "9.8.5"
gem "slim-rails"
gem "cells"
gem "cells-slim", "0.0.6"
gem "cells-rails", "0.1.0"
gem "route_translator"
gem "breadcrumbs_on_rails"
gem "sentry-raven"
gem "devise-i18n"
gem "rails-i18n"
gem "mini_racer"
gem "premailer", github: "sinfin/premailer"
gem "premailer-rails"
gem "rubyzip"
gem "rack-mini-profiler"
gem "uglifier", ">= 1.3.0"

group :test do
  gem "factory_bot"
  gem "rack_session_access"
end

group :development, :test do
  gem "faker", require: false
end

group :development do
  gem "rbnacl", "< 5.0"
  gem "rbnacl-libsodium"
  gem "bcrypt_pbkdf", "< 2.0"
  gem "ed25519"
  gem "rubocop"
  gem "rubocop-minitest"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rails_config"
  gem "rubocop-rake"
  gem "annotate"
  gem "guard-rubocop"
  gem "guard-slimlint"
  gem "letter_opener"
  gem "pry-rails"
  gem "slack-notifier"
  gem "capistrano-rails", require: false
  # gem "capistrano-sinfin", git: "git@bitbucket.org:Sinfin/capistrano-sinfin.git", branch: "master"
  # gem "capistrano-serviceman", github: "Sinfin/capistrano-serviceman", branch: "master"
  gem "better_errors"
  gem "binding_of_caller"
  gem "rails-flog", require: "flog"
end
