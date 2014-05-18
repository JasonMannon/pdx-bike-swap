Portlandbikeswap::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :index
  root to: "index#index"
end
