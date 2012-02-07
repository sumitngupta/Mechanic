ENV["RACK_ENV"] ||= "development"

require 'bundler'
require 'json'
require 'sinatra'
require 'machinist'

Bundler.setup

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

Dir["./lib/**/*.rb"].each { |f| require f }