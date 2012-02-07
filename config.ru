require 'bundler'
require 'json'

Bundler.require

require "mechanic"

use Rack::Reloader, 0

run Mechanic