require 'rails/railtie'
require "poichigeon/concerns/leers"
module Poichigeon
  class Railtie < ::Rails::Railtie
    initializer 'poichigeon.before_initialize' do
      ActiveSupport.on_load(:active_record) do
        ::ActiveRecord::Base.send :include, Leers
      end
    end
  end
end