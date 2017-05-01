Rails.application.config.middleware.use OmniAuth::Builder do  
 provider :facebook, 'APP_ID', 'APP_SECRET'  
 provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
 provider :github, 'CLIENT ID', 'SECRET'
end