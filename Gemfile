source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'rails', '~> 5.2.1'

# Boot
gem 'bootsnap', '>= 1.1.0', require: false

# Data Store
gem 'pg', '>= 0.18', '< 2.0'

# App Server
gem 'puma', '~> 3.11'

# View
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Core
gem 'bcrypt', '~> 3.1.7'
gem 'friendly_id', '~> 5.2.0'
gem 'webpacker', require: false

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'annotate'
  gem 'brakeman'
  gem 'reek'
  gem 'rubocop'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
  gem 'pry-rails'

  gem 'fuubar'
end
