source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'haml-rails'

# memcachier & dalli are both used to cache precompiled assets
# when deploying to production (Heroku in this instance)
# see: http://blog.alexmaccaw.com/faster-deploys
gem 'memcachier'
gem 'dalli'

# see https://devcenter.heroku.com/articles/rails-integration-gems
# required for Rails 4 logs to be visible on Heroku
gem 'rails_12factor'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fuubar'
  gem 'pry'
  gem 'pry-debugger'
  gem 'pry-rails'
  gem 'pry-remote'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
