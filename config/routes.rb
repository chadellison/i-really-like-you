Rails.application.routes.draw do
  resources :albums, only: [:index] do
    resources :songs, only: [:show]
  end
end
