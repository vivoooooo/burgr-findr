require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FindBurger
  class Application < Rails::Application
 config.paperclip_defaults ={
        :storage => :s3,
        :s3_credentials => {
            :bucket => ENV['AWS_BUCKET'],
            :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
            :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
            :s3_host_name => "s3-ap-southeast-2.amazonaws.com"
        }
 }
    
    config.active_record.raise_in_transactional_callbacks = true
  end
end
