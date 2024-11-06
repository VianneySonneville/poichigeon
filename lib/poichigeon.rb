# frozen_string_literal: true

require "poichigeon/engine"
require "poichigeon/railtie"
require "poichigeon/version"
require "poichigeon/controllers/poichigeon_controller"

# Poichigeon.configure do |config|
#   config.option1 = "valeur"
# end

module Poichigeon
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield configuration
    end
  end

  class Configuration
    attr_accessor :option1, :option2 # exemples d'options configurables
  end
end
