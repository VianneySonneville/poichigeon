module Poichigeon
  module Helpers
    def poichigeon_bide
      tag.div data: { controler: :poichigeon } do
        tag.h1 "Poichigeon"
      end
    end
  end
end