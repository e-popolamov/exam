source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.4"

gem "rails", "~> 7.0.8", ">= 7.0.8.4"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'api-pagination', '~> 5.0'
gem 'devise', '~> 4.9', '>= 4.9.3'
gem 'devise-jwt', '~> 0.11.0'
gem 'jsonapi-serializer', '~> 2.2'
gem 'rspec-rails', '~> 6.1'
gem 'will_paginate', '~> 4.0'


group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1'
  gem 'faker'
  gem 'rubocop', '~> 1.56', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', '~> 3.0', require: false
  gem 'shoulda-matchers', '~> 5.0'
end


group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

