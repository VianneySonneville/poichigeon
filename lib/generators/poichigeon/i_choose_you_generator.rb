# frozen_string_literal: true

module Poichigeon
  #
  # Rails generator used for installing Poichigeon in a Rails application.
  # Run it with +bin/rails g poichigeon:install+.
  #
  class IChooseYouGenerator < Rails::Generators::Base
    class_option :orm, type: :string, default: "active_record"
    source_root File.expand_path("templates", __dir__)

    puts "Installing Meteore..."

    def copy_files
      puts "copy migration Meteore..."
      template "db/poichigeon_schema.rb"
    end
  end
end