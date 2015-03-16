Rails.application.routes.draw do
  
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
    collection do        
        get 'lista_modal_medicamento'
      end    
  end

  resources :patients do
    collection do
      get 'search'
      get 'lista_modal_paciente'
    end
  end

  resources :procedures do 
    collection { post :import }
  end

  resources :services

  # You can have the root of your site routed with "root"
    
end
