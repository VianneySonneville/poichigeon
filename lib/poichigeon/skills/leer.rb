module  Poichigeon::Leers
  extend ActiveSupport::Concern

  included do
    before_validation :leer_before_validate
    after_validation :leer_after_validate
    after_create :leer_after_create
    after_update :leer_after_update
    after_destroy :leer_after_destroy
    after_save :leer_after_save
  end

  private

  def leer_before_validate
    puts "leer_before_validate"
    puts self.inspect
  end

  def leer_after_validate
    puts "leer_after_validate"
    puts self.inspect
  end

  def leer_after_create
    puts "leer_after_create"
    puts self.inspect
  end

  def leer_after_update
    puts "leer_after_update"
    puts self.inspect
  end

  def leer_after_destroy
    puts "leer_after_destroy"
    puts self.inspect
  end

  def leer_after_save
    puts "leer_after_save"
    puts self.inspect
  end
end