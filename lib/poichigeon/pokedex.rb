module Poichigeon
  class Pokedex
    attr_accessor :pokeballs

    def capture
      if defined?(Poichigeon::Leers)
        settings
      else
        Rails.logger.warn "Le module Poichigeon::Leers n'a pas pu être chargé."
      end
    end

    def settings
      setting(pokeball) if pokeball.is_a? Symbol
      pokeball.each { setting _1 } if pokeball.is_a? Array
    end

    def setting(klass_name)
      # faire ne sorte de pouvoir récuperer Post ici
      # puts Post.inspect
      puts klass_name.to_s.camelize.inspect
      # puts klass_name.to_s.camelize.constantize.new.class
      # if defined?(klass_name.to_s.camelize.constantize)
      #   puts "oui existe"
      # else
      #   puts "non existe pas"
      # end
    #   klass = klass_name.to_s.camelize.constantize

    #   klass.include Poichigeon::Leers if defined?(klass)
    # rescue
    #   Rails.logger.warn "le module #{klass_name.to_s.camelize} n'est pas définie"
    end
  end
end