Rails.application.routes.draw do

  devise_for :stores, :controllers => {
  	sessions: 'stores/stores/sessions',
  	passwords: 'stores/stores/passwords',
  	registrations: 'stores/stores/registrations'
  }
  namespace :stores do
  	resources :stores, only: [:top, :index, :show, :edit, :update, :destroy]
    get '/stores/top' => 'stores#top'
  	resources :genres, only: [:index, :create, :edit, :update, :destroy]
  	resources :facilities, only: [:new, :index, :create, :edit, :update, :destroy]
  end

  devise_for :users, controllers: {
  	sessions: 'users/users/sessions',
  	passwords: 'users/users/passwords',
  	registrations: 'users/users/registrations'
  }
  resources :homes, only: [:top, :about]
  namespace :users do
    resources :users, only: [:show, :edit, :update, :destroy]
  end
  get '/homes/about' => 'homes#about'
  
  resources :reservations, only: [:new, :index, :show, :edit, :update, :destroy]
  resources :reservation_fixings, only: [:index, :show, :destroy]
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
