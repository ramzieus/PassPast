require 'bundler/inline'
gemfile do
  source 'https://rubygems.org'
  gem 'clipboard'
  gem 'rqrcode'
end

require 'securerandom'
require 'clipboard'
require 'rqrcode'
print 'this password for : '
a = gets.chomp.to_s
print 'Enter the lenght of password : '
b = gets.chomp.to_i
password = SecureRandom.base64(b)
puts '*'*b 
puts 'your password was genarated'
Clipboard.copy password
puts 'your password was coppied to clipboard'
qrcode = RQRCode::QRCode.new(password)
image = qrcode.as_png
IO.write(a+".png", image.to_s)
puts 'The QR code was generated'