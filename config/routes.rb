Rails.application.routes.draw do
  resources :authors, only: %i[show new edit create update]
  resources :posts, only: %i[show new edit create update]
end
