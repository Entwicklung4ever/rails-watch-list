Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do
    resources :movies, only: [:index, :show, :new, :create, :destroy,]
      resources :bookmarks, only: [:new, :create, :destroy]
  end
end
