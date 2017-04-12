class DirectorsController < MyApplicationController
  def index
    {body: Director.all.to_s}
  end

  def show
    {body: Director.find(path.to_i).to_s}
  end

end
