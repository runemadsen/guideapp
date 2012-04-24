Guideapp::Application.routes.draw do
  
  resources :guides do
    resources :items
  end
  
  match "/admin" => "admin#index"
  
  root :to => 'home#index'

  devise_for :users
end
