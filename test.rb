require 'securerandom'

puts "This is the random 64 #{SecureRandom.urlsafe_base64(8)}"