Guideapp::Application.routes.draw do
  
  resources :guides do
    resources :items
  end
  
  match "/about" => "home#about"
  match "/admin" => "admin#index"

  devise_for :users
  
  resources :users, :only => [:show]
  
  root :to => 'home#index'
end
