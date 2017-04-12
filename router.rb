require './movies'

class Router
  def initialize(appl)
    @appl = appl
  end

  def call(env)
    status, headers, body = @appl.call(env) # call our Sinatra app
    req = Rack::Request.new(env)

    case req.path_info
      when /movies/
        return Movie.new(req.path_info).render
    end

    [status, headers, body]
  end
end
