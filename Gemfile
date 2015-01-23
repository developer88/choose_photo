ruby "2.1.3"

source 'https://rubygems.org'
source 'https://rails-assets.org'

# Main
gem 'rails', '4.1.8'
gem 'devise'
gem 'httparty'
gem 'better_errors', group: :development 

# Assets, templates etc
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'slim'
gem 'rails-assets-bootstrap'
gem 'rails-assets-bootswatch'
gem 'rails-assets-angularjs'

# Others
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'pg'
end
