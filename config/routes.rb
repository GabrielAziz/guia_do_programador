Rails.application.routes.draw do

  resources :posts, only: %i[ index show new edit create update destroy ]

  resources :comments, only: %i[ ]

  resources :technologies, only: %i[ index new edit create update destroy ]

  resources :languages, only: %i[ index new edit create update destroy ]

  devise_for :users
  devise_for :admins

  root "posts#index"

end
