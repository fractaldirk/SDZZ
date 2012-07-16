OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '477453758950604', 'e3af8d7eba551f35622323a3af4cde59', scope: "email,publish_stream"
end


