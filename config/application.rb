# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Webfez
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.active_job.queue_adapter = :sidekiq
    config.active_record.schema_format = :sql

    config.autoload_paths += Dir[
      "#{config.root}/lib/**/",
      "#{config.root}/app/models/**/*.rb"
    ]
    config.eager_load_paths += Dir[
      Rails.root.join('app', 'models', '**', '*.rb')
    ]

    config.generators do |g|
      g.assets false
      g.controller_specs false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
      g.helper false
      g.orm :active_record, primary_key_type: :uuid
      g.routing_specs false
      g.test_framework :rspec, fixture: true
      g.view_specs false
    end
  end
end
