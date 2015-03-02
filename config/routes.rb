Rails.application.routes.draw do
  mount Soulmate::Server, :at => "/autocomplete/"
  get 'welcome/index'

  root 'welcome#index'

  resources :adverse_events do
    
    resources :hum_res_assistances

    resources :hospitalization_days

    resources :ae_drugs

    resources :ae_procedures
  end  

  

  resources :branch_offices

  resources :event_categories do

    resources :events
    
  end

  resources :charges

  resources :drugs do 
    collection { post :import }    
  end

  resources :patients do
    collection do
      get 'search'
    end
  end

  resources :procedures do 
    collection { post :import }
  end

  resources :services

  # You can have the root of your site routed with "root"
    
end
