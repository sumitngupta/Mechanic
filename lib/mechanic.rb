module Mechanic
  class Fixtures < Sinatra::Base
    get "/create/:name" do
      content_type 'application/json'

      {:success => @request.params["m"]}.to_json
    end

    not_found do
      halt 404, 'fixture not found'
    end

    def self.new(*)
      super
    end
  end

end
