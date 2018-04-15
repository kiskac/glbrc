Rails.application.routes.draw do
  root 'sessions#new'
  get 'sessions/new'
  get 'applications/new'
  get 'users/new'
  patch 'users/add', to: 'users#add'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    collection do
      patch :sort
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
