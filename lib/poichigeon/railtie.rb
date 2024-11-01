require 'rails/railtie'

module Poichigeon
  class Engine < ::Rails::Engine
    isolate_namespace Poichigeon
  end
end

module Poichigeon
  class Railtie < ::Rails::Railtie
    initializer 'poichigeon.before_initialize' do
      ActiveSupport.on_load(:active_record) do
        ::ActiveRecord::Base.send :include, Poichigeon::Leers
      end
    end
  end
end