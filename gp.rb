require 'bundler/inline'
gemfile do
  source 'https://rubygems.org'
  gem 'clipboard'
end

require 'securerandom'
require 'clipboard'
password = SecureRandom.base64(32)
puts password

Clipboard.copy password
