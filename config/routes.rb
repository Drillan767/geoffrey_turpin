Rails.application.routes.draw do

  root :to => 'pages#accueil'

  match '/biographie', :to => 'pages#biographie', :via => [:get, :post]
  match '/musiques', :to => 'pages#musiques', :via => [:get, :post]



end
