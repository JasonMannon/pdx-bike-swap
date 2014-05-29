Portlandbikeswap::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :index
  resources :categories do 
  	resources :components
  end
  resources :components
  root to: "index#index"
  resources :emailer
end
