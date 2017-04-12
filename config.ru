require './my_app'
require './router'
use Rack::Reloader
use Router

run MyApp.new
