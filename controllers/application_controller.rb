class ApplicationController
  attr_reader :path, :method

  def initialize(path:, method:)
    @path = path
    @method = method
  end

  # This is where you define the routes
  def render
    resp = case method
             when 'GET'
               if path.empty?
                 index
               elsif path == 'new'
                 new
               else
                 show
               end
             when 'POST'
               create
             when 'PUT', 'PATCH'
               update
             when 'DESTROY'
               delete
             else
               {body: 'GTFO'}
           end
    [resp[:status] || 200, {"Content-Type" => (resp[:content_type] || "text/html")}, [resp[:body] || '']]
  end

  [:index, :new, :create, :update, :delete, :show].each do |method|
    define_method(method) { {} }
  end

end
