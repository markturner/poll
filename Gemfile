source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.11'
gem 'pg'

group :development, :test do
  gem 'thin'
  gem 'quiet_assets'
  gem 'pry-rails'

  # testing
  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda-matchers'

  # fixtures
  gem 'machinist'
  gem 'ffaker'

  # continuous testing
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
  group :darwin do
    gem 'rb-fsevent', require: false
  end
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

# data
gem 'httparty'
gem 'geocoder'

# views
gem 'haml-rails'
gem 'emblem-rails'
gem 'simple_form'

# styles
gem 'bootstrap-sass'

# behaviour
gem 'jquery-rails'
gem 'ember-rails'
