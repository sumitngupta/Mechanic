require 'sinatra'

class Mechanic < Sinatra::Base
  get "/create/:name" do
    p "did get here"
    p params
    content_type 'application/json'


    {:success => @request.params["m"]}.to_json
  end
end
