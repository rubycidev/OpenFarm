Devise.setup do |config|
  config.secret_key = 'd9ba5cd894719214f911c787394461caa11bb3f3b9168158114d6190887766c098699bb0ea5266ce97bdff617eb3ceb417df10541197050f15d26408864dbe47'
  config.mailer_sender = 'team@openfarm.cc'
  require 'devise/orm/mongoid'
  config.case_insensitive_keys = [ :email ]
  config.stretches = Rails.env.test? ? 1 : 10
  config.password_length = 8..128
  config.reset_password_within = 6.hours
end
