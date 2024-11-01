require 'rails/railtie'

module Poichigeon
  class Engine < ::Rails::Engine
    isolate_namespace Poichigeon
  end
end