Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  scope '(:locale)', :locale => /fr|en/ do
    root :to => 'pages#accueil'

    match '/biographie', :to => 'pages#biographie', :via => [:get, :post]
    match '/musiques', :to => 'pages#musiques', :via => [:get, :post]
    match '/mentions_legales', :to => 'pages#mentions', :via => :get
    match '/plan', :to => 'pages#mapping', :via => :get

    resources :articles

    get '/contact', to: 'contacts#new' , as: :new_contact
    post '/contact', to: 'contacts#create', as: :contacts
  end


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
