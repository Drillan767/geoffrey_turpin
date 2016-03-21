Rails.application.routes.draw do

  root :to => 'pages#accueil'

  match '/biographie', :to => 'pages#biographie', :via => [:get, :post]
  match '/musiques', :to => 'pages#musiques', :via => [:get, :post]
  get '/contact', to: 'contacts#new' , as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
