class Router
  def initialize(appl)
    @appl = appl
  end

  def call(env)
    status, headers, body = @appl.call(env) # call our Sinatra app
    req = Rack::Request.new(env)

    case req.path_info
      when /\A\/movies\/?/
        return MoviesController.new({method: req.request_method, path: req.path_info.gsub(/\A\/movies\/?/, '')}).render
    end

    [status, headers, body]
  end
end
