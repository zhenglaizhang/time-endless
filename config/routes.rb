Rails.application.routes.draw do
  resources :collections do
    resources :albums
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
