class MoviesController < ApplicationController
  def index
    {body: Movie.all.values.to_json, content_type: 'application/json'}
  end

  def show
    {body: Movie.find(path.to_i).to_s, content_type: 'application/json'}
  end

end
