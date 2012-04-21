Guideapp::Application.routes.draw do
  
  authenticated :user do
    root :to => 'home#index'
    resources :guides do
      resources :items
    end
  end
  
  root :to => "home#index"
  devise_for :users
end
