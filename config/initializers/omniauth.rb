Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, ENV['GOOGLE_AUTH_KEY'], ENV['GOOGLE_AUTH_SECRET']
end
