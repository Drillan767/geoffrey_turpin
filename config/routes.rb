Rails.application.routes.draw do

  root :to => 'pages#accueil'

  match '/biographie', :to => 'pages#biographie', :via => [:get, :post]
  match '/musiques', :to => 'pages#musiques', :via => [:get, :post]
  match '/plan', :to => 'pages#mapping', :via => :get
  match '/mentions_legales', :to => 'pages#mentions', :via => :get

  get '/contact', to: 'contacts#new' , as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  match '/articles', to: 'posts#index', :via => :get
  match '/article/:id', to: 'posts#show', :via => [:get, :post]

  resources :posts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
