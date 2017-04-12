class Movie
  def initialize(path_info)
    @path_info = path_info
  end

  def render
    [200, {"Content-Type" => "text/html"}, ["Movies list in #{@path_info}"]]
  end
end