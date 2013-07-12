Podpeople::Application.routes.draw do
  resources :networks do
    resources :shows
  end
end
