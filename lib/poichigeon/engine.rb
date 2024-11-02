module Poichigeon
  class Engine < ::Rails::Engine
    isolate_namespace Poichigeon

    initializer "poichigeon.active_record" do |app|
      if defined?(Rake::Task)
        Rake::Task["db:migrate"].enhance do
          load "#{__dir__}/tasks.rb"
          Rake::Task['poichigeon:load_schema'].invoke
        end
      end
    end

    initializer "poichigeon.add_routes" do |app|
      app.routes.draw do
        get "poichigeon", to: "poichigeon/poichigeon#fly"
      end
    end
  end
end
