module  Poichigeon::Leers
  extend ActiveSupport::Concern

  POICHIGEON_CALLBACKS = %i[
    before_validate
    after_validate
    before_create
    after_create
    before_update
    after_update
    before_save
    after_save
    before_destroy
    after_destroy
  ]

  included do
    before_validation :can_leer_before_validate
    after_validation :can_leer_after_validate
    before_create :can_leer_before_create
    after_create :can_leer_after_create
    before_update :can_leer_before_update
    after_update :can_leer_after_update
    before_save :can_leer_before_save
    after_save :can_leer_after_save
    before_destroy :can_leer_before_destroy
    after_destroy :can_leer_after_destroy
  end

  class_methods do

    POICHIGEON_CALLBACKS.each do |callback|
      define_method("leer_#{callback}") do |options = {}|
        instance_variable_set("@opts_leer_#{callback}", options)
      end

      define_method("opts_leer_#{callback}") do
        instance_variable_get("@opts_leer_#{callback}") || {}
      end
    end
  end

  private

  POICHIGEON_CALLBACKS.each do |callback|
    define_method("can_leer_#{callback}") do
      log_callback(callback)
    end
  end

  def log_callback(callback)
    puts "#{callback} -------------------------"
    puts self.class.send("opts_leer_#{callback}") # les params du callback
    puts "end ------------------------"
  end
end