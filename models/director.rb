class Director
  attr_accessor :id, :data
  @@directors = {}

  def self.find(id)
    @@directors[id]
  end

  def self.create(director)
    @@directors[director['id']] = director
  end

  def self.all
    @@directors
  end

  def update(data)
    @@directors[id] = data
  end

  def delete
    @@directors.delete!(id)
  end

end