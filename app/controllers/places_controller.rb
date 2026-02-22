class PlacesController < ApplicationController

  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/:id
  def show
    @place = Place.find_by({ "id" => params["id"] })
    # Find all posts associated with this specific place
    @posts = Post.where({ "place_id" => @place.id })
  end

  # GET /places/new
  def new
    # Just renders the form in app/views/places/new.html.erb
  end

  # POST /places
  def create
    @place = Place.new
    @place.name = params["name"]
    @place.save
    
    redirect_to "/places"
  end

end