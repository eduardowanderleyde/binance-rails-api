source "https://rubygems.org"

ruby "3.2.2"

# Use Rails with patched security vulnerabilities
gem "rails", "~> 7.1.5", ">= 7.1.5.1"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server (patched for CVE-2024-45614)
gem "puma", ">= 6.4.3"

# Secure password handling
gem "bcrypt"

# Faster boot times
gem "bootsnap", require: false

# Required on Windows
gem "tzinfo-data", platforms: %i[windows jruby]

# JWT authentication
gem "jwt"

# Fake data generator for testing
gem "faker"

# Patch for XSS vulnerabilities (rails-html-sanitizer)
gem "rails-html-sanitizer", ">= 1.6.1"

# Patch for DoS vulnerabilities (net-imap)
gem "net-imap", ">= 0.5.7"

# Patch for log injection and file inclusion (rack)
gem "rack", ">= 3.0.14"

# Patch for libxml2/libxslt CVEs (nokogiri)
gem "nokogiri", ">= 1.18.8"

# Patch for HTTP request smuggling (webrick)
gem "webrick", ">= 1.8.2"

group :development, :test do
  # Debugging tool
  gem "debug", platforms: %i[mri windows]

  # RSpec test framework
  gem "rspec-rails", "~> 6.1.0"

  # Factory bot for test data
  gem "factory_bot_rails"
end

group :development do
  # Better error highlighting
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end
