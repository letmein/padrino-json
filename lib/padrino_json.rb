module Padrino
  module JSON
    module Helpers
      def json_data
        request.body.rewind
        ::JSON.parse(request.body.read)
      end
    end

    def self.registered(app)
      app.helpers Padrino::JSON::Helpers
    end
  end
end
