Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/actors/:id" => "actors#show"
  end

  namespace :api do
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    get "/actors" => "actors#index"
    get "/actor" => "actors#show"
  end
end
