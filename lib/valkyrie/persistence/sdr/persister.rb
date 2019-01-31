module Valkyrie::Persistence::SDR
  class Persister
    attr_reader :adapter

    def initialize(adapter:)
      @adapter = adapter
    end

    def save(resource:)
      # TODO: interrogate the change set to see what's changed?
      Dor::Services::Client.object(resource.id).update(resource.attributes)
    end

    def delete(resource:)
      Dor::Services::Client.object(resource.id).delete
    end
  end
end
