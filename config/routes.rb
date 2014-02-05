Week4hw::Application.routes.draw do

  get "/" => "pages#home"

    # HINT: Add more routes here...
    get "/weather/search" => "weather#search"
    get "/weather/conditions" => "weather#conditions"
    get "/index/index/" => "index#index"
    get "/show/show" => "show#show"


end
