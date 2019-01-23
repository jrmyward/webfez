Sidekiq.configure_server do |config|
  if Rails.env.production?
    config.redis = { url: "#{Rails.application.credentials.redis[:url_cable]}" }
  else
    config.redis = { url: "redis://localhost:6379/0" }
  end
end

Sidekiq.configure_client do |config|
  if Rails.env.production?
    config.redis = { url: "#{Rails.application.credentials.redis[:url_cable]}" }
  else
    config.redis = { url: "redis://localhost:6379/0" }
  end
end
