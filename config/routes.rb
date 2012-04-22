Guideapp::Application.routes.draw do
  
  resources :guides do
    resources :items
  end
  
  root :to => 'home#index'

  devise_for :users
end
