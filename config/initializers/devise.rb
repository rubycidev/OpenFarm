Devise.setup do |config|
  config.secret_key = '3e32e15df3fdee89c4080bd0b83c3413efc811ac4dfeada0b66269ea7981b40d9c3e22f2b023940b5452a4150bfc10fd09b4c773aed1a6afb36d3704d6a783b8'
  config.mailer_sender = 'team@openfarm.cc'
  require 'devise/orm/mongoid'
  config.case_insensitive_keys = [ :email ]
  config.stretches = Rails.env.test? ? 1 : 10
  config.password_length = 8..128
  config.reset_password_within = 6.hours
end
