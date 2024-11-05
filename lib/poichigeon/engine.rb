module Poichigeon
  class Engine < ::Rails::Engine
    isolate_namespace Poichigeon

    initializer "poichigeon.assets.precompile" do |app|
      app.config.assets.precompile += %w(poichigeon_controller.js)
    end
  end
end
