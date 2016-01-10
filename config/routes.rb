Rails.application.routes.draw do
  resources :albums, only: [:index, :show] do
    resources :songs, only: [:show]
  end
end
