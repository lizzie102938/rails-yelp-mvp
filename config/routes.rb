Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new" - new
# POST "restaurants/38/reviews" - create

# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews, only: [:new, :create]
#     # /restaurants/:restaurant_id/reviews/new

#     # Beyond normal CRUD routes

#     # # Collection routes — these are like a "custom index"
#     # collection do
#     #   # makes a route like /restaurants/CUSTOM_THING
#     #   get "top"
#     #   # get "low_rated"
#     #   # get "berlin"
#     # end

#     # # Member routes — these are like a "custom show"
#     # member do
#     #   # make a route like /restaurants/:id/CUSTOM_THING
#     #   get "chef"
#     # end
#   end

#   resources :reviews, only: [:destroy]
#   # /reviews/5

#   # get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new"

#   # get "/restaurants/top", to: "restaurants#top"
#   # get "/restaurants/:id/chef", to: "restaurants#chef"
# end
