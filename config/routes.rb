Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :adverse_events do
    
    resources :hum_res_assistances

    resources :hospitalization_days

    resources :ae_drugs

    resources :ae_procedures
  end  

  resources :events

  resources :branch_offices

  resources :event_categories

  resources :charges

  resources :drugs

  resources :patients do
    collection do
      get 'search'
    end
  end

  resources :procedures

  resources :services

  # You can have the root of your site routed with "root"
    
end
