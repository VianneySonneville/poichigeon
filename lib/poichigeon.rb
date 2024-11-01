# frozen_string_literal: true

require 'poichigeon/pokedex'
require "poichigeon/engine"
require "poichigeon/railtie"
require 'poichigeon/skills/meteore'
require "poichigeon/skills/leer"
require 'poichigeon/version'
require 'rails'
require 'active_record'

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
      # puts @pokedex.pokeballs.inspect
      # puts @pokedex.pokeballs.first.to_s.classify.constantize.new
    end

    def pokedex
      @pokedex ||= Pokedex.new
    end
  end
end
