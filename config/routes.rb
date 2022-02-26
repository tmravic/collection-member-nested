Rails.application.routes.draw do
  # collection
  # member
  resources :restaurants do
    # /restaurants/...

    collection do
      # get 'top', to: 'restaurants#top', as: :top
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
  # not nested because it doesn't need the restaurant_id from the url
  # you only need the review_id, /reviews/:id
  # it just goes to the controller and calls @restaurant.destroy
end
