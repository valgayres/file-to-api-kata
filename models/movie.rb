class Movie
  attr_accessor :id, :data
  @@movies = {}

  def self.find(id)
    @@movies[id]
  end

  def self.create(movie)
    @@movies[movie['id']] = movie
  end

  def self.all
    @@movies
  end

  def update(data)
    @@movies[id] = data
  end

  def delete
    @@movies.delete!(id)
  end

end