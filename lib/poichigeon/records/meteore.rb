# frozen_string_literal: true

# lib/poichigeon/.rb
# :id, integer, aut_oincrement
# :klass_type, string, null: true
# :model_id, integer, null: true
# :callback, string, null: true
# :targets, string serializers, null: true
# :path, string, null: true
# :views, intger, null: true

module Poichigeon
  class Meteore < ActiveRecord::Base
    serialize :targets
  end
end
