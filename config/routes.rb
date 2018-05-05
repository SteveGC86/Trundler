Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about'
  get 'pages/contact'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root "home#index"
end
