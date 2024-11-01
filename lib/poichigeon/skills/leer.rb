module  Poichigeon::Leers
  extend ActiveSupport::Concern

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

    def leer_before_validate(options = {})
      @opts_leer_before_validate = options
    end
  end

  class_methods do
    def leer_before_validate(options = {})
      @opts_leer_before_validate = options
    end

    def opts_leer_before_validate
      @opts_leer_before_validate || {}
    end

    def leer_after_validate(options = {})
      @opts_leer_after_validate = options
    end

    def opts_leer_after_validate
      @opts_leer_after_validate || {}
    end
  
    def leer_before_create(options = {})
      @opts_leer_before_create = options
    end

    def opts_leer_before_create
      @opts_leer_before_create || {}
    end

    def leer_after_create(options = {})
      @opts_leer_after_create = options
    end

    def opts_leer_after_create
      @opts_leer_after_create || {}
    end

    def leer_before_update(options = {})
      @opts_leer_before_update = options
    end

    def opts_leer_before_update
      @opts_leer_before_update || {}
    end
  
    def leer_after_update(options = {})
      @opts_leer_after_update = options
    end

    def opts_leer_after_update
      @opts_leer_after_update || {}
    end

    def leer_before_save(options = {})
      @opts_leer_before_save = options
    end

    def opts_leer_before_save
      @opts_leer_before_save || {}
    end

    def leer_after_save(options = {})
      @opts_leer_after_save = options
    end

    def opts_leer_after_save
      @opts_leer_after_save || {}
    end

    def leer_before_destroy(options = {})
      @opts_leer_before_destroy = options
    end

    def opts_leer_before_destroy
      @opts_leer_before_destroy || {}
    end
  
    def leer_after_destroy(options = {})
      @opts_leer_after_destroy = options
    end

    def opts_leer_after_destroy
      @opts_leer_after_destroy || {}
    end
  end

  private

  def can_leer_before_validate
    puts "1) -------------------------"
    puts self.class.opts_leer_before_validate
    puts "end ------------------------"
  end

  def can_leer_after_validate
  end

  def can_leer_before_create
  end

  def can_leer_after_create
  end

  def can_leer_before_update
  end

  def can_leer_after_update
  end

  def can_leer_before_save
  end

  def can_leer_after_save
  end

  def can_leer_before_destroy
  end

  def can_leer_after_destroy
  end
end