# frozen_string_literal: true

require "poichigeon/records/meteore"

module Poichigeon
  class Job < ActiveJob::Base
    queue_as :poichigeon

    def perform(**opts)
      Meteore.create!(opts)
    rescue ActiveRecord::RecordInvalid => e
      ::Rails.logger.error("Meteore creation failed: #{e.message}")
      raise e
    end
  end
end