class MyApp
  def call(env)
    [404, {"Content-Type" => "text/html"}, ["Not found"]]
  end
end
