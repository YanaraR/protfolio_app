Rails.application.routes.draw do
  get 'contact/index'
  get 'home/index'
  get 'projects/index'
  resources :projects, only: [:index, :show]

  root 'home#index'
  get '/home', to: 'home#index'
  get '/projects', to: 'projects#index'
  get '/contact', to: 'contact#index'
end
