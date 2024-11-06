# frozen_string_literal: true

module Poichigeon
  module Helpers
    def poichigeon_bide
      tag.div data: { controller: :poichigeon } do
        tag.h1 "Poichigeon"
      end
    end
  end
end