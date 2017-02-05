Rails.application.routes.draw do
  namespace :pokemon_center do
    get '', to: 'dashboard#index', as: '/'
    resources :projects, :clients, :testimonials
  end

  devise_for :users, skip: [:registrations]

  devise_scope :user do
    get "/pokemon_center" => "devise/sessions#new"
  end

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end

  root 'static#home'
  resources :projects, only: [:index, :show]
  get '/team', to: 'static#team'
  get '/start-a-project', to: 'static#startproject'
  get '/portfolio', to: 'projects#index'
  get '/services', to: 'static#services'
end
