require "poichigeon/records/meteore"

module Poichigeon
  class Job < ActiveJob::Base
    queue_as :default
    def perform(**opts)
      Meteore.create(opts)
    end
  end
end