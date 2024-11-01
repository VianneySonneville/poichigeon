# frozen_string_literal: true

require 'poichigeon/pokedex'
require "poichigeon/engine"
require "poichigeon/railtie"
require 'poichigeon/skills/meteore'
require "poichigeon/skills/leer"
require 'poichigeon/version'

module Poichigeon
  class << self
    attr_accessor :pokedex
    # Public configuration poichigeon
    #
    # Poichigeon.configure do |config|
    #   config.pokeball [:foo]
    # end
    # 
    # Yields Poichigeon::Configuration instance.
    def configure
      yield pokedex if block_given?
      @pokedex.capture
    end

    def pokedex
      @pokedex ||= Pokedex.new
    end
  end
end
