require File.dirname(__FILE__) + '/../lib/mechanic.rb'
require 'rack/test'

set :environment, :test

def app
  Sinatra::Application
end

describe "Mechanic" do
  include Rack::Test::Methods

  it "should respond with application/json" do
    get "/create/User"
    p last_response

    last_response.should be_ok
  end
end