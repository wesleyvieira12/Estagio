Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/about', to: 'home#about', as: :about
  get '/contact', to: 'home#contact', as: :contact
  get '/dashboard', to: 'home#index', as: :dashboard

end
