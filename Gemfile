source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "rails", "~> 6.0.2", ">= 6.0.2.1"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 4.3"
gem "bootsnap", ">= 1.4.2", require: false
gem "bunny", "~> 2.14", ">= 2.14.3"
gem "pry", "~> 0.12.2"
gem "cerber", require: "cerberus"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "rspec", "~> 3.9"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
