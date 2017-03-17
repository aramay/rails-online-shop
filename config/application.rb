require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'dotenv'

Bundler.require(*Rails.groups)

gmail_username = ENV['gmail_username']
gmail_password = ENV['gmail_password']


module Shoppe
  class Application < Rails::Application
    config.generators.helper = false
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework :rspec,
        :fixtures => true,
        :view_specs => false,
        :helper_specs => false,
        :routing_specs => false,
        :controller_specs => true,
        :request_specs => true
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
  end

end
