Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # welcome page for my group
  root 'welcome#index'
  
  namespace :api do
    namespace :v1 do
      
      resources :users
      resources :houses
    end
  end
end
