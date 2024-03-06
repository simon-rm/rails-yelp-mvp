Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do # user spec edit?
    resources :reviews, only: :create
    member do
      get :reviews
    end
  end
end
