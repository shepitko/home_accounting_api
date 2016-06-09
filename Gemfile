source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'rails-api'
gem 'pg'

gem 'devise_token_auth'
gem 'omniauth'
gem 'rack-cors'

gem 'spring', :group => :development
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'json_spec'
  gem 'shoulda-matchers'
end

# To use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Deploy with Capistrano
# gem 'capistrano', :group => :development
group :production do
  gem 'rails_12factor'
end
