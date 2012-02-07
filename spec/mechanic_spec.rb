require 'spec_helper'

def app
  @app ||= Mechanic::Fixtures
end

describe "Mechanic" do
  include Rack::Test::Methods

  it "should respond with application/json" do
    get "/User"

    last_response["Content-Type"].should == 'application/json'
  end
end