Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: [:show, :index, :new, :create, :edit, :update, :destroy] do
    resources :comments, only:[:create]
  end
end
