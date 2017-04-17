require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pavapath
  class Application < Rails::Application
    Raven.configure do |config|
      config.dsn = 'https://d647cb542a114255860945d74b6e7477:21d26ac57d784ad9a98cc2c285122b73@sentry.io/158974'
    end
  end
end
