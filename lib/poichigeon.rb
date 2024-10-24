# frozen_string_literal: true

require 'poichigeon/version'
require 'poichigeon/active_records/meteore'
require "poichigeon/engine"
require "poichigeon/leers/leer"

module Poichigeon
  # Public configuration poichigeon
  #
  # Poichigeon.configure do |config|
  #   config.pokeball [:foo]
  # end
  # Yields Poichigeon::Configuration instance.
  # def configure
  #   yield configuration if block_given?
  # end

  # def configuration
  #   @configuration ||= Configuration.new
  # end
end
