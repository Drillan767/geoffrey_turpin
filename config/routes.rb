Rails.application.routes.draw do

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#accueil'

    get '/biographie', to: 'pages#biographie'
    get '/musiques', to: 'pages#musiques'
    get '/mentions_legales', to: 'pages#mentions'
    get '/plan', to: 'pages#mapping'

    # 'destroy', 'index' n'existent pas.
    get '/devis/nouveau', to: 'devis#new', as: :devis_new
<<<<<<< HEAD
    resources :devis, except: %i(destroy index new)

    # resources :article
=======
    resources :devis, except: %i[destroy index new]
    get '/devis/:id/envoi', to: 'devis#envoi_devis', as: :devis_envoi
    get '/devis/:id/pdf', to: 'devis#print_devis', as: :devis_pdf
>>>>>>> af150ea9eb2ffb2b6ede9bc5353d54cb73ea2e5a

    get '/contact', to: 'contacts#new', as: :new_contact
    post '/contact', to: 'contacts#create', as: :contacts
  end

  get '/admin', to: 'pages#admin', as: :admin

  authenticate :user do
    scope '/admin' do
      resource :devis_configurations
      get '/devis', to: 'admin_devis#index', as: :devis_index_admin
      get '/devis/:status', to: 'admin_devis#status', as: :devis_status_admin
<<<<<<< HEAD
      get '/devis/:session_id', to: 'admin_devis#show', as: :devis_show_admin
=======
      get '/devis/show/:id', to: 'admin_devis#show', as: :devis_show_admin
      get '/devis/change/:id/:status', to: 'admin_devis#change', as: :devis_update_admin
>>>>>>> af150ea9eb2ffb2b6ede9bc5353d54cb73ea2e5a
    end
  end

end
