Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["YOUR_CLIENT_ID"], ENV["YOUR_CLIENT_SECRET"]
end
