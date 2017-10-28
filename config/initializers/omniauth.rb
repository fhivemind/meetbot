Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, '262549251568.264299299174', '57b1f4eb1c5e8dcac013da4a5a2a3048', scope: 'identity.basic', name: :sign_in_with_slack
 # provider :slack, '262549251568.264299299174', '57b1f4eb1c5e8dcac013da4a5a2a3048', scope: 'team:read,users:read,identify,bot'
end