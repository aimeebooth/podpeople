Podpeople::Application.routes.draw do
	resources :networks do
	  resources :shows do
	    resources :hosts
	    resources :episodes do
		    resources :guests
		    resources :topics
		    resources :tapings
		  end
	  end
	end

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'login', to: 'home#show', as: 'login'

  root to: "networks#index"

end
