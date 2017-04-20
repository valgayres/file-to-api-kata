# Load all necessary folders
require './controllers/application_controller'
require 'json'
Dir['./controllers/*.rb'].each{ |f| require f }
Dir['./models/*.rb'].each{ |f| require f }


data = JSON.parse(File.read('data.json'))

data['movies'].each do |movie|
  Movie.create(movie)
end

data['directors'].each do |director|
  Director.create(director)
end