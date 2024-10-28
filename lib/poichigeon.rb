# frozen_string_literal: true

require 'poichigeon/active_records/meteore'
require 'poichigeon/configuration'
require "poichigeon/engine"
require "poichigeon/leers/leer"
require 'poichigeon/version'

module Poichigeon
  class << self
    # Public configuration poichigeon
    #
    # Poichigeon.configure do |config|
    #   config.pokeball [:foo]
    # end
    # 
    # Yields Poichigeon::Configuration instance.
    def configure
      yield configuration if block_given?
      @configuration.capture
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
