Rails.application.config.middleware.use OmniAuth::Builder do
  provider :redu,  "secret", "token"
end
