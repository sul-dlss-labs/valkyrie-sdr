module Valkyrie::Persistence::SDR
  class MetadataAdapter
    def persister
      Valkyrie::Persistence::SDR::Persister.new(adapter: self)
    end

    def query_service
      @query_service ||= Valkyrie::Persistence::SDR::QueryService.new(adapter: self)
    end
  end
end
