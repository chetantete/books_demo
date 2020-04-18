Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :books
  resources :authors

  namespace :api do 
    namespace :v1 do 
      resources :authors
    end 
  end 

end
