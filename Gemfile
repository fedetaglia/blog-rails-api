source 'https://rubygems.org'


gem 'rails', '4.1.8'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development

# Authentication
gem 'devise'

# Heroku 
gem 'rails_12factor', group: :production


gem 'grape', '0.9.0'
gem 'grape-entity'
gem 'rack-contrib', '~> 1.1.0'
gem 'grape-swagger', '~> 0.7.2'
gem 'grape-swagger-rails',  '~> 0.0.8'
gem 'grape-kaminari'
gem 'grape_has_scope'
gem 'grape-active_model_serializers'


# Image Upload
gem 'carrierwave'                 # Uploading files
gem 'mini_magick'                 # Image manipulation
gem 'fog'                         # Uploading files to S3

gem 'font-awesome-sass'



gem 'pry' # Pry
gem 'pry-nav' # Pry


# These are outside for production seeding
gem 'ffaker'
gem 'factory_girl_rails'


group :test do
  # Testing
  gem 'rspec-rails'
  gem 'rspec-virtus'
  gem 'database_cleaner' 
  
  # Test Matchers
  gem "shoulda-matchers"
  gem 'grape-entity-matchers'

  # Integration Testing
  gem 'cucumber'
  gem 'capybara'

  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
end
