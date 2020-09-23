# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
# gem 'jwt'
gem 'jwt', '~> 2.2', '>= 2.2.2'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# gem 'factory_bot_rails', '~> 6.1'
# gem 'shoulda-matchers', '~> 4.4', '>= 4.4.1'
# gem 'database_cleaner', '~> 1.8', '>= 1.8.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 3.33'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
end

group :test do
  # gem 'factory_bot_rails', '~> 6.1'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'faker', '~> 2.14'
  gem 'shoulda-matchers', '~> 4.4', '>= 4.4.1'
end

group :development do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
