Rails.application.routes.draw do
namespace 'api' do 
    namespace 'v1' do
      resources :comments do 
        resources :comments
      end 
      resources :meditations do 
        resources :comments 
      end 
    end
  end 
end
