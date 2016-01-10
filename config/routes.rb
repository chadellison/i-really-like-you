Rails.application.routes.draw do
  resources :albums, only: [:index, :show, :new, :create, :edit, :update] do
    resources :songs, only: [:show]
  end
end
