Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do # user spec edit?
    member do
      get :reviews
    end
  end
end
