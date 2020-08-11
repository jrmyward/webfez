# frozen_string_literal: true

Rails.application.configure do
  # Verifies that versions and hashed value of the package contents in the project's package.json
  config.webpacker.check_yarn_integrity = false
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Ensures that a master key has been made available in either ENV["RAILS_MASTER_KEY"]
  # or in config/master.key. This key is used to decrypt credentials (and other encrypted files).
  config.require_master_key = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = Uglifier.new(harmony: true)
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  config.action_controller.asset_host = 'https://www.alkadershriners.org'

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Mount Action Cable outside main process or domain
  # config.action_cable.mount_path = nil
  # config.action_cable.url = 'wss://example.com/cable'
  # config.action_cable.allowed_request_origins = [ 'http://example.com', /http:\/\/example.*/ ]

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  config.force_ssl = true

  # Semantic logger config
  config.action_mailer.logger = SemanticLogger[ActionMailer::Base]
  config.action_mailer.logger.level = :info
  config.log_level = :debug
  config.semantic_logger.backtrace_level = :error
  config.rails_semantic_logger.format = :json
  config.rails_semantic_logger.semantic   = true
  config.rails_semantic_logger.started    = false
  config.rails_semantic_logger.processing = false
  config.rails_semantic_logger.rendered   = false
  config.rails_semantic_logger.quiet_assets = true

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Use a real queuing backend for Active Job (and separate queues per environment)
  # config.active_job.queue_adapter     = :sidekiq
  # config.active_job.queue_name_prefix = "webfez_#{Rails.env}"

  # config.action_controller.asset_host = 'https://www.alkadershriners.org'
  # config.action_mailer.asset_host = config.action_controller.asset_host
  # config.action_mailer.default_url_options = { host: 'alkadershriners.org' }
  # config.action_mailer.perform_caching = false

  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :address => 'smtp-relay.sendinblue.com',
  #   :port => 587,
  #   :domain => 'alkadershriners.org',
  #   :user_name => Rails.application.credentials.sendinblue[:username],
  #   :password => Rails.application.credentials.sendinblue[:password],
  #   :authentication => 'login',
  #   :enable_starttls_auto => true
  # }

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
