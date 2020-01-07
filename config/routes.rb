Rails.application.routes.draw do
  resources :comments do 
    resources :comments
  end 
  resources :meditations do 
    resources :comments 
  end 
end
