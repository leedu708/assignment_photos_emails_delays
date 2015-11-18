# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address           => 'smtp.sendgrid.net'
  :port              => '587'
  :authentication    => :plain,
  :user_name         => ENV['SENDGRID_USERNAME'],
  :SENDGRID_PASSWORD => ENV['SENDGRID_PASSWORD'],
  :domain            => 'heroku.com'
  :enable_starttls_auto => true
}
config.action_mailer.delivery_method ||= :smtp
config.action_mailer.default_url_options = {
  :host => 'https://guarded-brushlands-9981.herokuapp.com/'
}