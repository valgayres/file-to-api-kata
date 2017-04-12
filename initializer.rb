# Load all necessary folders
require './controllers/my_application_controller'
Dir['./controllers/*.rb'].each{ |f| require f }
Dir['./models/*.rb'].each{ |f| require f }
