# warn_indent: true
# ~Comments wrapped with a '~()~' annotation are what I've added to what was already generated.

=begin  
  ~(Source is where you're gems will be pulled from. If you want to pull from another source for additional gems, 
  add it like this: 

  source 'alternate.source.gems' do
    -Gems go here-
  end)~
=end
source 'https://rubygems.org'

# ~(This links your GitHub Repo to your local version.)~
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ~(Ruby version to be used for the app)~
ruby '3.0.1'

# ~(The core gem responsible for providing the rails framework.)~
# ~(Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main')~
gem 'rails', '~> 6.1.4'

# ~(Gem that provides your app a server to run on. Great because it's intended for both development and production environments)~
# Use Puma as the app server
gem 'puma', '~> 5.0'

# ~(Gem that provides SCSS transpiler to CSS)~
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'

# ~(Ruby support for webpack. Provides modularization of files/resources as well as code bundling.)~
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'


=begin
 ~(Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
 Renders pages on server side, swaps the <body> of the current page for the rendered page, and merges the <head> 
 of the two when a link is ckicked.)~
=end
 gem 'turbolinks', '~> 5'

 # ~("Provides a DSL for declarign JSON that beats manipulating giant hash structures." -GitHub Repo)~
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'dotenv-rails'

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :production do
=begin
   ~(Other databse options include:
   gem 'sqlite3', '~> 1.4', '>= 1.4.2'
   gem 'mysql2', '~> 0.5.3' )~
=end
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
