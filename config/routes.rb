Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    collection do
      get 'top' #-> in a collection route there is no :id
    end
    member do
      get 'chef' # -> in a member route we have an :id
    end
  end

  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
end
