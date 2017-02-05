Rails.application.routes.draw do
  namespace :pokemon_center do
    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :users, path_names: {
    sign_up: ""
  }

  devise_scope :user do
    get "/pokemon_center" => "devise/sessions#new"
  end

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end

  resources :projects
  root 'static#home'
  get '/team', to: 'static#team'
  get '/start-a-project', to: 'static#startproject'
  get '/portfolio', to: 'projects#index'
  get '/services', to: 'static#services'
end
