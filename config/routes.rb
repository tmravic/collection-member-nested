Rails.application.routes.draw do
  # collection
  # member
  resources :restaurants do
    # /restaurants/...
    
    collection do
      # get 'top', to: 'restaurants#top', as: :top
      get :top
    end


  end
end
