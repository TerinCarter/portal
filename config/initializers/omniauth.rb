Rails.application.config.middleware.use OmniAuth::Builder do  
 provider :facebook, 'APP_ID', 'APP_SECRET'  
 provider :github, 'CLIENT ID', 'SECRET'
end