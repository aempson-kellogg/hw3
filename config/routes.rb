Rails.application.routes.draw do
  resources "places"
  resources "posts"
  # Set the homepage to the list of places
  get "/", :controller => "places", :action => "index"
end
