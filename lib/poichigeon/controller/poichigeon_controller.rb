require "poichigeon/records/meteore"

module Poichigeon
  class PoichigeonController < ActionController::Base
    include ActionController::Live

    def fly
      response.headers["Content-Type"] = "text/event-stream"
      response.headers["Cache-Control"] = "no-cache"

      loop do
        poichigeon_attack = Meteore.attack(params[targets])

        if poichigeon_attack.present?

          poichigeon_attack.each do |meteore|
            response.stream.write("data: #{meteore.to_json}\n\n")
          end
        end

        sleep 5
      end

    ensure
      response.stream.close
    end
  end
end