require 'rails/railtie'

module Poichigeon
  class Engine < ::Rails::Engine
    isolate_namespace Poichigeon
    # initializer 'poichigeon.todo' do
    #   # Code à exécuter après que Rails a chargé l'application
    #   puts "########## RAILTIES INITILIZER ###########"
    #   # Poichigeon.configure
    #   if defined?(Poichigeon::Leers)
    #     # Injecte le module dans le modèle Post (s'assurer que Post est bien chargé)
    #     puts "INJECTION DU GROS YEUX"
    #     if defined?(Post)
    #       Post.include Poichigeon::Leers if defined?(Post)
    #     else
    #       puts "POST DOES NOT EXISTE"
    #     end
    #   else
    #     puts "Le module Poichigeon::Leers n'a pas pu être chargé."
    #     Rails.logger.warn "Le module Poichigeon::Leers n'a pas pu être chargé."
    #   end
    # end
  end
end