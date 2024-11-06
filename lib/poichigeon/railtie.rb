# frozen_string_literal: true

require "rails/railtie"
require "poichigeon/concerns/leers"
require "poichigeon/helpers/helpers"

module Poichigeon
  class Railtie < ::Rails::Railtie
    # isolate_namespace Poichigeon

    initializer "poichigeon.active_record" do |app|
      if defined?(Rake::Task)
        Rake::Task["db:migrate"].enhance do
          load "#{__dir__}/tasks.rb"
          Rake::Task['poichigeon:load_schema'].invoke unless Rake::Task['poichigeon:load_schema'].already_invoked
        end
      end
    end

    initializer "poichigeon.helpers" do |app|
      ActiveSupport.on_load :action_view do
        ::ActionView::Base.send :include, Helpers
      end
    end

    initializer 'poichigeon.before_initialize' do
      ActiveSupport.on_load(:active_record) do
        puts "################################################"
        puts "inject poichigeon to record"
        ::ActiveRecord::Base.send :include, Leers
      end
    end

    initializer "poichigeon.add_route" do
      Rails.application.routes.append do
        get "poichigeon", to: "poichigeon/poichigeon#fly"
      end
    end
  end
end