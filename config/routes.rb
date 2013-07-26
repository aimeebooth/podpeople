Podpeople::Application.routes.draw do

  resources :shows do
    resources :hosts
    resources :episodes
  end

  resources :episodes do
    resources :guests
    resources :topics
    resources :tapings
  end

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  root to: "networks#index"

end
