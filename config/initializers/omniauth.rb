OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1499342393700620', '1b742ed3f18ca169441e7e39bb3f5bc0', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end