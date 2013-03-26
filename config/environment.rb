# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PersonalWebsite::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtpout.secureserver.net",
  :domain  => ENV["EMAIL_DOMAIN"],
  :port      => 80,
  :user_name => ENV["EMAIL_USERNAME"],
  :password => ENV["EMAIL_PASSWORD"],
  :authentication => :plain
}
