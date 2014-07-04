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
  match '/contact', to: 'static_pages#contact', via: 'get'
end
