Rails.application.routes.draw do

  root to: 'pages#home'
  get '/about', to: 'pages#about'
  
  resources :articles
  
  get '/signup', to: 'users#new'
  resources :users, except: [:new]

end
