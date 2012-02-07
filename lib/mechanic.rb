require 'sinatra/base'

module Mechanic
  class Fixtures < ::Sinatra::Base
    set :port, 9999

    get "/:name" do
      content_type 'application/json'

      {:success => @request.params["m"].to_s}.to_json
    end

    not_found do
      halt 404, 'fixture not found'
    end

    def self.new(*)
      super
    end
  end

end

Mechanic::Fixtures.run!