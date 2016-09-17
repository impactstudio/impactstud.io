Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_up: ""
  }

  devise_scope :user do
    get "/pokemon_center" => "devise/sessions#new"
  end

  resources :projects
  root 'static#home'
  get '/team', to: 'static#team'
  get '/start-a-project', to: 'static#start_a_project'
  get '/studio', to: 'static#studio'
  get '/portfolio', to: 'static#portfolio'
end
