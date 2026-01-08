Betterstrongerfaster::Application.routes.draw do
  resources :specific_practice_elaborations

  resources :generic_practice_elaborations

  resources :specific_goals

  resources :specific_practices

  resources :generic_goals

  resources :generic_practices

  resources :process_areas

  resources :process_area_categories

  resources :maturity_levels

  root to: 'static_pages#home'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/home', to: 'static_pages#home', via: 'get'
  match '/introduction', to: 'static_pages#introduction', via: 'get'
  match '/process_area_components', to: 'static_pages#process_area_components', via: 'get'
  match '/tying_it_all_together', to: 'static_pages#tying_it_all_together', via: 'get'
  match '/relationships_among_process_areas', to: 'static_pages#relationships_among_process_areas', via: 'get'
  match '/using_cmmi_models', to: 'static_pages#using_cmmi_models', via: 'get'

end

