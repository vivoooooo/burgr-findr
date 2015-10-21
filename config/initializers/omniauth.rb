Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], { scope: 'email,public_profile,user_birthday,user_location', info_fields: 'email,name,gender,birthday,location'}
end