Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    collection do
      get 'top' #-> in a collection route there is no :id
    end
    member do
      get 'chef' # -> in a member route we have an :id
    end
    # By nesting the review routes inside the resto block, we have access to the restaurant ID.
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:show, :destroy, :edit, :update]

  namespace :admin do
    resources :restaurants, only: [:index]
  end

  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
end
