Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '370878046409957', '1ac20aac1ffe75186889beb6b1b3ebc2', :client_options => {:ssl => {:ca_path => '/etc/ssl/certs'}}
end