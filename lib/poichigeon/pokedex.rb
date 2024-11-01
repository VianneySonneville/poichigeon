module Poichigeon
  class Pokedex
    attr_accessor :pokeballs

    def capture
      unless defined?(Poichigeon::Leers)
        Rails.logger.warn "The Poichigeon::Leers module could not be loaded."
        return
      end
      settings
    end

    def settings
      if pokeballs.is_a? Array
        pokeballs.each { setting _1 }
      else
        setting pokeballs
      end
    end

    def setting(model)
      unless klass = klass_from_attribute(model)
        Rails.logger.warn "the #{model} can not be convert to valid ActiveRecord class"
        return
      end
      klass.include Poichigeon::Leers
    end


    def klass_from_attribute(model)
      # if :model given
      return model.to_s.classify.constantize if model.is_a? Symbol 
      # if Model given
      return model if model < ActiveRecord::Base
      # if Model.new given
      return model.class if model.is_a? ActiveRecord::Base
      nil
    rescue NameError => e
      Rails.logger.warn "Constantiize model error: #{e.message}"
      nil
    end
  end
end