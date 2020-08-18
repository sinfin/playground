# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Playground
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.exceptions_app = self.routes

    config.time_zone = "Prague"

    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework :test_unit, fixture: false
    end

    I18n.available_locales = [:cs, :en]
    I18n.default_locale = :cs

    config.folio_console_locale = I18n.default_locale
    config.autoload_paths << Rails.root.join("app/lib")
    config.eager_load_paths << Rails.root.join("app/lib")

    Rails.autoloaders.main.ignore("#{::Folio::Engine.root}/app/lib/folio/console/simple_form_components")
    Rails.autoloaders.main.ignore("#{::Folio::Engine.root}/app/lib/folio/console/simple_form_inputs")

    overrides = [
      Folio::Engine.root.join("app/overrides").to_s,
      Rails.root.join("app/overrides").to_s,
    ]

    overrides.each { |override| Rails.autoloaders.main.ignore(override) }

    config.to_prepare do
      overrides.each do |override|
        Dir.glob("#{override}/**/*_override.rb").each do |file|
          load file
        end
      end
    end


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
