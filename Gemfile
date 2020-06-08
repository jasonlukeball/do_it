source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc2', '< 5.1'
ruby '2.5.0'

group :production do
  #gem 'pg'                            # Postgres database on heroku
  gem 'rails_12factor'                # Required for assets pipeline on heroku
  gem 'faker', '~> 1.6', '>= 1.6.3'
end

group :development do
  gem 'sqlite3', '~> 1.3', '< 1.4'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'nyan-cat-formatter'
  gem 'pry-rails'
  gem 'faker', '~> 1.6', '>= 1.6.3'
  gem 'shoulda'
  gem 'dotenv-rails'
  gem 'factory_bot'
end


gem 'bcrypt'                            # Use for encrypting user passwords
gem 'sass-rails', '~> 5.0'              # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'              # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails'                      # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails'                      # Use jquery as the JavaScript library
gem 'jquery-ui-rails'                   # Use jquery UI library
gem 'turbolinks'                        # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'bootstrap-sass'                    # Bootstrap for style
gem 'intercom-rails'                    # Intercom
gem 'devise'                            # Devise for authentication