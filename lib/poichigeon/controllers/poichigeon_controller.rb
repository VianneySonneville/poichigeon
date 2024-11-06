# frozen_string_literal: true

autoload :Meteore, "poichigeon/records/meteore"

module Poichigeon
  class PoichigeonController < ActionController::Base
    include ActionController::Live

    before_action :setup_sse_headers

    def fly
      stream_attacks
    rescue IOError => e
      ::Rails.logger.error "Stream closed: #{e.message}"
    ensure
      response.stream.close
    end

    private

    def stream_attacks
      @cpt = 0
      loop do
        # poichigeon_attack = Meteore.attack(params[:targets])

        # if poichigeon_attack.present?

        #   poichigeon_attack.each do |meteore|
        #     response.stream.write("data: #{meteore.to_json}\n\n")
        #   end
        # end
        response.stream.write("data: #{@cpt}\n\n")
  
        sleep 1
      end
    end

    def setup_sse_headers
      response.headers["Content-Type"] = "text/event-stream"
      response.headers["Cache-Control"] = "no-cache"
      response.headers['Connection'] = 'keep-alive'
    end
  end
end