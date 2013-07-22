Podpeople::Application.routes.draw do
  resources :networks do
    resources :shows
  end

  resources :shows do
    resources :hosts
    resources :episodes
  end

  resources :episodes do
    resources :guests
    resources :topics
    resources :tapings
  end

  root to: "networks#index"
end
