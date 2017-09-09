Rails.application.routes.draw do

  devise_for :users

  resources :devis

  scope '(:locale)', :locale => /fr|en/ do
    root :to => 'pages#accueil'

    match '/biographie', :to => 'pages#biographie', :via => [:get, :post]
    match '/musiques', :to => 'pages#musiques', :via => [:get, :post]
    match '/mentions_legales', :to => 'pages#mentions', :via => :get
    match '/plan', :to => 'pages#mapping', :via => :get

    resources :article

    get '/contact', to: 'contacts#new' , as: :new_contact
    post '/contact', to: 'contacts#create', as: :contacts
  end

  get '/admin', to: 'pages#admin', as: :admin

  authenticate :user do
    scope '/admin' do
      resources :devis_configurations, path: 'devis'
    end
  end

end
