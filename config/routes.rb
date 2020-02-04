Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, :posts
  # get '/authors/:id', to: 'authors#show'
  # get '/authors/new', to: 'authors#new'
  # get '/authors/:id/edit', to: 'authors#edit'
  # patch '/authors/:id', to: 'authors#update'
  # get '/authors/create', to: 'authors#create'
  
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/new', to: 'posts#new'
  # get '/posts/:id/edit', to: 'posts#edit'
  # patch '/posts/:id', to: 'posts#update'
  # get '/posts/create', to: 'posts#create'
end
