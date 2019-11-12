Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    collection do
      get 'top'
    end
  end

  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
end
