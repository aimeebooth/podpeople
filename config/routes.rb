Podpeople::Application.routes.draw do
  resources :networks do
    resources :shows
  end

  resources :shows do
    resources :hosts
  end

  root to: "networks#index"
end
