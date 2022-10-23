Rails.application.routes.draw do
  root "properts#index"
  resources :properts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
