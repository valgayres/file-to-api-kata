class MyApplicationController
  attr_reader :path, :method

  def initialize(path:, method:)
    @path = path
    @method = method
  end

  # This is where you define the routes
  def render
    # Parse the path info here to
    [200, {"Content-Type" => "text/html"}, ["Movies list in #{path}"]]
  end
end
