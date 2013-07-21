Podpeople::Application.routes.draw do
  resources :networks do
    resources :shows
  end

  root to: "networks#index"
end
