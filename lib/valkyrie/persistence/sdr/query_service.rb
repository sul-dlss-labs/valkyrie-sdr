module Valkyrie::Persistence::SDR
  class QueryService
    attr_reader :adapter

    def initialize(adapter:)
      @adapter = adapter
    end

    def find_by(id:)
      Dor::Services::Client.objects.find_by(id: id)
    end

    def find_all_of_model(model:)
      Dor::Services::Client.objects.find_all_of_model(model: model)
    end
  end
end
