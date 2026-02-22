class PostsController < ApplicationController

  # GET /posts/new?place_id=xxx
  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  # POST /posts
  def create
    @post = Post.new
    
    # Assign data from the form's "name" attributes
    @post.title = params["title"]
    @post.description = params["description"]
    @post.posted_on = params["posted_on"]
    @post.place_id = params["place_id"]
    
    @post.save
    
    # Redirect back to the specific place's show page
    redirect_to "/places/#{@post.place_id}"
  end

end