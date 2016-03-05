Rails.application.routes.draw do

  root :to => 'pages#accueil'

  match '/biographie', :to => 'pages#biographie', :via => [:get, :post]
  match '/musiques', :to => 'pages#musiques', :via => [:get, :post]
  match '/plan', :to => 'pages#mapping', :via => :get
  match '/mentions_legales', :to => 'pages#mentions', :via => :get



end
