
Rails.application.routes.draw do



  get 'sessions/new'
  get 'welcome/index'
  get 'signup', to: 'users#new', as: 'signup'
  # get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :articles do
  resources :comments
end
  resources :sessions
  resources :users





  root 'welcome#index'



end
