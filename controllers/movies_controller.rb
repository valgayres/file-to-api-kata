class MoviesController < MyApplicationController
  def index
    {body: Movie.all.to_s}
  end

  def show
    {body: Movie.find(path.to_i).to_s}
  end

end
